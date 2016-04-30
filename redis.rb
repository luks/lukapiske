
redis = Redis.new(:host => "127.0.0.1", :port => 6379, :db => 14)

redis.zcard "score"  // count

redis.zscan("score", 0, :match => "*borneo.ng.seznam.cz*", :count => 5000

redis.zscan("score", 0, :match => "*libvirt-cert*", :count => 5000

redis.zscan("score", 0, :match => "*ping*.ng.*", :count => 1600)

redis.zscan score 0  match *.ng.* count 50000

redis.zrevrange hackers 0 -1

redis.zrevrange "score", 0, -1, :withscores=>true

redis.zscan("score", 0 , :match => "*ssh*", :count=>50000)

redis.hscan("target",0 , :match => "*admins*", :count=>500)

redis.hscan("target",0 , :match => "*.go.*", :count=>50000)

redis.hlen("target") // count

redis.hvals("target")

a=[];redis.hvals("target").each {|x| a << x if x =~ /luka/}

redis.hset "revision", "num", 0

redis.hincrby 'revision', 'num', 1

redis.hget "revision", "num"

redis.hmset("puzzle.ng.seznam.cz", "ntp_score", "220", "ntp_status", "something realy nasty happened", "")

# Every Redis command is atomic, HMSET as well.

# Sets the specified fields to their respective values in the hash stored at key. This command overwrites any existing fields in the 
# hash. #If key does not exist, a new key holding a hash is created.

redis.hmset("puzzle.ng.seznam.cz", "ntp_score", "223", "ntp_status", "something realy nasty happened")

redis.hscan "puzzle.ko.seznam.cz", 0, :match=>"ntp_score"

a = [];redis.hkeys("target").each { |x| a << x }

redis.hmget( "target", a[0,100])






