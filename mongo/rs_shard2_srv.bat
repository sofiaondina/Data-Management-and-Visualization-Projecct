cd C:\Program Files\MongoDB\Server\4.2\bin

set DATA_TMP=%date:~-4,4%%date:~-7,2%%date:~-10,2%
set DATA_FORMATTATA=%DATA_TMP: =0%

start /b mongod --shardsvr --replSet s2 --logpath C:\root\Universita\project_dmdv\mongo\database\db27020\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\db27020\data --bind_ip 127.0.0.1 --port 27020

start /b mongod --shardsvr --replSet s2 --logpath C:\root\Universita\project_dmdv\mongo\database\db27021\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\db27021\data --bind_ip 127.0.0.1 --port 27021

start /b mongod --shardsvr --replSet s2 --logpath C:\root\Universita\project_dmdv\mongo\database\db27022\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\db27022\data --bind_ip 127.0.0.1 --port 27022
