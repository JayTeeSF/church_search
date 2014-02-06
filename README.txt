Church Search
simple twitter gem search client ...tailored for church related searches

irb -r "./lib/church_search.rb"
csn = ChurchSearch::News.new
tweets = csn.overhear("pastor")

# OR
tweets =  ChurchSearch::News.overhear("pastor")

# OR
./bin/church_search pastor
tweet #0
	from: alyssaray1
	to:
	says: I fell in love with @its_the_pastor and @BENpoe50 tonight

tweet #74
	from: pc_frith
	to:
	says: People must believe that God has created them to do something that will make a difference. - Pastor Chris Hodges

tweet #77
	from: TheTyraG
	to:
	says: RT @DevinLyric: When you in church &amp; it seems like the Pastor is talking directly to you.. 😩😭💯 http://t.co/t22eGLM6Qt

↪ ./bin/church_search -s why responsibility
431292328817332224	AlyceMcAffer		Why do I like you so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so so much?
431292329321037824	VSparti		RT @johnnywaddell52: Ill never be good enough so why do I even try?
