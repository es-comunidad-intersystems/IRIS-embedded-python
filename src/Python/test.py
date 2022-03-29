import sys
import os

# Comprobar que el servicio "callin" esté activo
os.environ["IRISUSERNAME"]="SuperUser"
os.environ["IRISPASSWORD"]="SYS"
os.environ["IRISNAMESPACE"]="USER"

sys.path += ['C:\InterSystems\IRIS20212\mgr\python',"C:\InterSystems\IRIS20212\lib\python"]

import iris

print (iris)


rs = iris.sql.exec("SELECT TOP 10 * From Data.Titanic")

for row in rs:
    print(row)