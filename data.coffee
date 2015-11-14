restaurants = [
	_id: 1
	name: 'Lao Wai'
	description: 'Lao Wai är en vegetarisk kinesisk restaurang som främst hämtar sin inspiration från Sichuan och Taiwan. Här lagas allting med importerade originalråvaror, allting tillagas på plats, och allting är färskt och naturligt fritt från ägg, mjölkprodukter och glutamat. Här möts tacksamma vegetarianer och älskare av smakfull kinesisk mat för att njuta av rätter som trots detta inte verkar sakna någonting alls.'
	cuisine: 'chinese'
	address: 'Luntmakargatan 74'
	coords: [59.342269, 18.058993]
,
	_id: 2
	name: 'Mykonos Taverna'
	description: 'Detta är en restaurang som ligger på Sankt Eriksgatan 95 i Stockholm.'
	cuisine: 'greek'
	address: 'Sankt Eriksgatan 95'
	coords: [59.343292, 18.038480]
,
	_id: 3
	name: 'Lilla Ego Krog'
	description: 'Lilla Ego är en restaurang i Stockholm vid Odenplan.'
	cuisine: 'swedish'
	address: 'Västmannagatan 69'
	coords: [59.343696, 18.045613]
,
	_id: 4
	name: 'Tranan'
	description: 'På Rolfs kök serveras du nyskapande svensk mat av riktiga matälskare: i det helt öppna köket kan du se köksmästaren och kocken från kocklandslaget arbeta med säsongens närproducerade råvaror. I matsalen tas du om hand av en sommelier som ger dig dryckesförslag ur en vinkällare om 450 olika viner.'
	cuisine: 'swedish'
	address: 'Karlbergsvägen 14'
	coords: [59.343320, 18.049028]
,
	_id: 5
	name: 'Rolfs Kök'
	description: ''
	cuisine: 'french'
	address: 'Tegnérgatan 41'
	coords: [59.338787, 18.056958]
,
	_id: 6
	name: 'Arirang'
	description: 'Arirang är Stockholms koreanska matcentrum sedan 1975. Här serveras det koreanska kökets klassiker - såsom bulgogi, bibimbap och koreansk råbiff - med stor omsorg och respekt för råvaror. Boka bord, för Arirang fortsätter vara omåttligt populärt.'
	cuisine: 'korean'
	address: 'Luntmakargatan 65'
	coords: [59.340776, 18.060196]
,
	_id: 7
	name: 'Akki Sushi'
	description: 'Ett litet sushiställe med ett fåtal åtråvärda platser. Smakuplevelsen är desto större med pinfärsk och snyggt upplagd sushi utöver det vanliga. Passar kanske bäst för take away. Finns nu även i Hornstulls nya galleria med mer platser.'
	cuisine: 'japanese'
	address: 'Folkungagatan 45'
	coords: [59.314346, 18.072768]
,
	_id: 8
	name: 'Döden i Grytan'
	description: 'Detta är en restaurang som ligger på Norrtullsgatan 61 i Stockholm.'
	cuisine: 'italian'
	address: 'Norrtullsgatan 61'
	coords: [59.349010, 18.044952]
]

users = [
	{_id: 1, name: 'Malin'},
	{_id: 2, name: 'Lathike'},
	{_id: 3, name: 'Lukaz'},
	{_id: 4, name: 'Olga'},
	{_id: 5, name: 'Tina'},
	{_id: 6, name: 'Albin'},
	{_id: 7, name: 'Victor'},
	{_id: 8, name: 'Nova'},
	{_id: 9, name: 'Christoffer'}
]

reviews = [
	_id: 1
	date: new Date("2013-10-04T11:35:41Z")
	text: 'Riktigt goda, äkta och vällagade maträtter från Sichuan. Upplevs som hemlagad. Blev överraskad på ett positivt sätt av deras lunch. Ska gå och testa även deras kvällsrätter. Men det är veggorestaurang, det finns inga kötträtter. Maten är stark men lämnar en behaglig känsla efteråt. Måste provas.'
	stars: 4
	restaurant: 1
	user: 5
,
	_id: 2
	date: new Date("2014-01-04T11:35:41Z")
	text: 'Bra smakkombinationer och ingredienser. Återkommer gärna'
	stars: 5
	restaurant: 1
	user: 5
,
	_id: 3
	date: new Date("2015-10-10T11:35:41Z")
	text: 'Smaklöst och trist upplevde jag mitt första besök hos denna restaurang.'
	stars: 1
	restaurant: 1
	user: 8
,
	_id: 4
	date: new Date("2012-03-01T11:35:41Z")
	text: 'God mat med fantastisk service. Vi fick vänta lite längre än väntat på maten och utan att ha sagt ett ord så bjöd de på gratis dricka som kompensation.'
	stars: 5
	restaurant: 8
	user: 8
,
	_id: 5
	date: new Date("2014-10-04T11:35:41Z")
	text: 'Vi var ett sällskap på 8 personer och fick tre gånger tillsägelse att hålla ihop beställningen. Maten var god men lite för högt pris tyckte vi. Servicen kändes påträngande från en av servitriserna men var för övrigt bra, Miljön är helt ok och vi fick en trevlig kväll. Läs hela recensionen på krog-tankar.bloggplatsen.se'
	stars: 4
	restaurant: 8
	user: 4
,
	_id: 6
	date: new Date("2011-10-04T11:35:41Z")
	text: 'Favorit greken i stan. Bästa maten, servicen, personalen och stämningen. Vi firade våran vigsel med middag här och det blev minnesvärt. Grymt god vin. Kommer att komma hit igen garanterat nu när vi hittat favoritstället i stan.'
	stars: 5
	restaurant: 2
	user: 9
,
	_id: 7
	date: new Date("2014-10-04T11:35:41Z")
	text: 'Mormors favorit kvarterskrog. Helt OK. Man får vad man betalar för, helt enkelt'
	stars: 3
	restaurant: 2
	user: 6
,
	_id: 8
	date: new Date("2015-01-04T11:35:41Z")
	text: 'Genomgående bra kvalité och god mat. Mycket trevlig och kunnig personal. Trångt, men på ett mysigt sätt. Dyrt, men värt det.'
	stars: 5
	restaurant: 3
	user: 7
,
	_id: 9
	date: new Date("2015-05-04T11:35:41Z")
	text: 'Mycket gott. Tog Biff Rydberg och den kan rekommenderas.'
	stars: 4
	restaurant: 3
	user: 2
,
	_id: 10
	date: new Date("2014-05-04T11:35:41Z")
	text: 'Isterband med sting, goda rödbetor och härlig senap. Halleluja! Lite Parisisk Chartierkänsla vad gäller personal och miljö. Charmigt!'
	stars: 5
	restaurant: 3
	user: 1
,
	_id: 11
	date: new Date("2014-10-04T11:35:41Z")
	text: 'Mycket bra! Förbaskat bra mat, har så gott som ätit mig igenom hela menyn, allt håller hög kvalitet. 
Höga priser men det höga priset till trots har de snåla portioner! Inte ens om man betalar extra för stor portion får man märkbart mer, jag kände mig lurad. Fixar de bara till de gnidiga portionerna blir det 5 stjärnor på studs!'
	stars: 5
	restaurant: 6
	user: 5
,
	_id: 12
	date: new Date("2014-10-04T11:35:41Z")
	text: 'Bibimbap med nötkött var hittills bästa jag provat i Stockholm men ändå inte fantastisk. Det saknades något lilla extra för att kalla det för ´hemlagad´. Dyrt men jag tyckte inte att portionen var liten, snarare ganska stor.'
	stars: 3
	restaurant: 6
	user: 5
,
	_id: 13
	date: new Date("2010-10-04T11:35:41Z")
	text: 'Jag håller med tidigare recensenter - det är riktigt gott men möjligtvis lite dyrt. Kommer gärna tillbaka hit!'
	stars: 5
	restaurant: 6
	user: 3
,
	_id: 14
	date: new Date("2010-10-04T11:35:41Z")
	text: 'Första gången på koreansk restaurang. Servitören var hjälpsam och berättade hur vi skulle äta vår bibimbap. Mycket gott och prisvärt!'
	stars: 4
	restaurant: 6
	user: 8
,
	_id: 15
	date: new Date("2015-10-04T11:35:41Z")
	text: 'Bästa sushin i stan utan tvekan! Men det är inget för alla de som tror att sushi är lax! Här får man riktig sushi som kan mäta sig med sushi som man får i Japan! Priset är lite högre men väldigt prisvärt med tanke på kvalitén.'
	stars: 5
	restaurant: 7
	user: 5
,
	_id: 16
	date: new Date("2015-10-04T11:35:41Z")
	text: 'Har blivit sämre men är fortfarande en av de bästa i sthockholm'
	stars: 4
	restaurant: 7
	user: 2
]

module.exports = {restaurants, users, reviews}
