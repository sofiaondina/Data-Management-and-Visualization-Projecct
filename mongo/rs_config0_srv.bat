cd C:\Program Files\MongoDB\Server\4.2\bin

set DATA_TMP=%date:~-4,4%%date:~-7,2%%date:~-10,2%
set DATA_FORMATTATA=%DATA_TMP: =0%

start /b mongod --configsvr --replSet cfg --logpath C:\root\Universita\project_dmdv\mongo\database\cfg0\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\cfg0\data --bind_ip 127.0.0.1 --port 27023

start /b mongod --configsvr --replSet cfg --logpath C:\root\Universita\project_dmdv\mongo\database\cfg1\log\mongod_%DATA_FORMATTATA%.log --logappend --dbpath C:\root\Universita\project_dmdv\mongo\database\cfg1\data --bind_ip 127.0.0.1 --port 27024
