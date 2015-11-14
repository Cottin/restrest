fs = require 'fs'
q = require 'q'
util = require 'util'
assert = require 'assert'
{equals, all, dissoc, evolve, has, intersection, join, keys, map, merge, type} = require 'ramda' # auto_require:ramda
{cc, ccp, dropLast, isa} = require 'ramda-extras'
data = require './data'

routerHelpers = require './helpers/routerHelpers'

requiredKeys = ['date', 'text', 'stars', 'restaurant', 'user']
isValidReview = (r) ->
	if ! equals(intersection(requiredKeys, keys(r)), requiredKeys) then return false
	else if ! isa(Number, r.stars) then return false
	else if r.stars < 1 || r.stars > 5 then return false
	else return true

invalidPUTMessage = "Invalid review. A valid review has all required keys:
(#{join(',', requiredKeys)}). Also stars must be a number between 1 and 5."

invalidPOSTMessage = invalidPUTMessage + ' Also, _id is not allowed in payload.'

makeIdsAndRefs = (data, prefix) ->
	makeUnique = (type) -> (id) ->
		return new Buffer("#{prefix}-#{type}-#{id}").toString('base64')
	restaurants = map evolve({_id: makeUnique('restaurants')}), data.restaurants
	users = map evolve({_id: makeUnique('users')}), data.users
	spec =
		_id: makeUnique 'reviews'
		restaurant: makeUnique 'restaurants'
		user: makeUnique 'users'
	reviews = map evolve(spec), data.reviews
	return {restaurants, users, reviews}

router = (app, database) ->
	{routeDefinitions, group, get, put, post, del} = routerHelpers(app)
	g = group

	db =
		restaurants: database.collection('restaurants')
		users: database.collection('users')
		reviews: database.collection('reviews')

	routeDefinitions null,
		g ':prefix/restaurant',
			get (_, {prefix}) -> db.restaurants.find({prefix}).toArray().then map(dissoc('prefix'))
		g ':prefix/user',
			get (_, {prefix}) -> db.users.find({prefix}).toArray().then map(dissoc('prefix'))
		g ':prefix/review',
			get (_, {prefix}) -> db.reviews.find({prefix}).toArray().then map(dissoc('prefix'))
			post (body, {prefix}) ->
				if !isValidReview(body) || has('_id', body)
					return {code: 400, message: invalidPOSTMessage}
				return db.reviews.insert merge(body, {prefix})
			put ':_id', (body, {prefix, _id}) ->
				if !isValidReview(body) then return {code: 400, message: invalidPUTMessage}
				return db.reviews.update {_id}, merge(dissoc('_id', body), {prefix})
			del ':_id', (_, {prefix, _id}) ->
				return db.reviews.remove {_id}
		g ':prefix/reset',
			get (_, {prefix}) -> 
				{restaurants, users, reviews} = makeIdsAndRefs data, prefix
				db.restaurants.remove {prefix}, (err, result) ->
					db.restaurants.insert map(merge({prefix}), restaurants), (err, result) ->
						assert.equal err, null
						console.log 'Inserted restaurants'
						return result
				db.users.remove {prefix}, (err, result) ->
					db.users.insert map(merge({prefix}), users), (err, result) ->
						assert.equal err, null
						console.log 'Inserted users'
						return result
				db.reviews.remove {prefix}, (err, result) ->
					db.reviews.insert map(merge({prefix}), reviews), (err, result) ->
						assert.equal err, null
						console.log 'Inserted reviews'
						return result
				return "re-seting data for #{prefix}..."


module.exports = router
