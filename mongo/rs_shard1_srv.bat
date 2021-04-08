cd C:\Program Files\MongoDB\Server\4.2\bin

set DATA_TMP=%date:~-4,4%%date:~-7,2%%date:~-10,2%
set DATA_FORMATTATA=%DATA_TMP: =0%

start /b mongod --shardsvr --replSet s1 --logpath C:\root\Universita\project_dmdv\mongo\database\db27017\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\db27017\data --bind_ip 127.0.0.1 --port 27017

start /b mongod --shardsvr --replSet s1 --logpath C:\root\Universita\project_dmdv\mongo\database\db27018\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\db27018\data --bind_ip 127.0.0.1 --port 27018

start /b mongod --shardsvr --replSet s1 --logpath C:\root\Universita\project_dmdv\mongo\database\db27019\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\db27019\data --bind_ip 127.0.0.1 --port 27019
