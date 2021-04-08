cd C:\Program Files\MongoDB\Server\4.2\bin

set DATA_TMP=%date:~-4,4%%date:~-7,2%%date:~-10,2%
set DATA_FORMATTATA=%DATA_TMP: =0%

mongos --configdb cfg/127.0.0.1:27023,127.0.0.1:27024 --logpath C:\root\Universita\project_dmdv\mongo\database\router\log\mongos_%DATA_FORMATTATA%.log --logappend --port 27025