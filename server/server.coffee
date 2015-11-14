express = require 'express'
bodyParser = require 'body-parser'
Table = require('cli-table')
morgan = require('morgan')
{compose, filter, head, keys, map, path} = require 'ramda' # auto_require:ramda
# {cc} = require 'ramda-extras'
{MongoClient, Server, MongoClient, ObjectID}  = require 'mongodb'

serverHelpers = require './helpers/serverHelpers'
router = require './router'

mongoUrl = 'mongodb://localhost:27017'

# ------------------------------------------------------------------------------------------------------
# MIDDLEWARE
# ------------------------------------------------------------------------------------------------------
app = express()
app.use(morgan('dev'))

app.set('port', (process.env.PORT || 3812));

app.all '*', (req, res, next) ->
	console.log "\n#{req.method} #{req.path}"
	next()

app.all '*', serverHelpers.cors
app.use bodyParser.json()

app.use serverHelpers.logResponseBody

# ------------------------------------------------------------------------------------------------------
# ROUTES
# ------------------------------------------------------------------------------------------------------
app.get '/', (req, res) -> res.sendFile(__dirname + '/index.html')
server = app.listen app.get('port'), ->
	host = server.address().address
	port = server.address().port
	console.log 'Example app listening at http://%s:%s', host, port

# app.get '/routes', (req, res) ->
# 	table = new Table {head: ['verb', 'path'], colWidths: [10, 70]}
# 	M = ['route', 'methods']
# 	P = ['route', 'path']

# 	extractVerb = compose head, keys, path(M)
# 	extractPath = path P
# 	extractVerbAndPath = (x) -> [extractVerb(x), extractPath(x)]
# 	notUndefined = (x) -> path(P, x) != undefined

# 	result = cc map(extractVerbAndPath), filter(notUndefined), app._router.stack
# 	table.push result...
# 	console.log table.toString()
# 	res.send 'Check your console for printed routing table'

# mongoOptions =
# 	server:
# 		auto_reconnect: true

# mongoCallback = (database) ->
# 	console.log 'connected to mongo, creating router...'
# 	router app, database
# 	console.log 'router created'

# 	# ------------------------------------------------------------------------------------------------------
# 	# START
# 	# ------------------------------------------------------------------------------------------------------
# 	server = app.listen 3812, ->
# 		host = server.address().address
# 		port = server.address().port
# 		console.log 'Example app listening at http://%s:%s', host, port

# MongoClient.connect(mongoUrl, mongoOptions).then(mongoCallback).catch (err) ->
# 	console.log 'Fatal error: Failed connecting to mongo', err

# fråga på stack...
# mongo = new MongoClient(new Server("localhost", 27017), {native_parser: true});
# console.log 'mongo', keys(mongo)
# mongo.open (err, cli) ->
# 	if err then return console.log 'ERROR', err
# 	cli.db('restrest').collection('restaurants').find().toArray().then((x)->console.log 'x', x)
# srv = new Server('localhost', 27017, {socketOptions: {autoReconnect: true}})
# console.log 'srv', srv.connect




	
module.exports = app