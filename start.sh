docker run -p 9042:9042 --name node1 -d -v "$PWD/data:/var/lib/cassandra/data" cassandra:latest
docker run -p 80:19877 -d --link node1:node1 --name sensor acobley/sensor java  -classpath /SensorSync-1.0-SNAPSHOT.jar uk.ac.dundee.computing
.aec.sensorsync.SensorSync
