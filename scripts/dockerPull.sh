export version=x86_64-1.1.0


for service in peer tools ccenv couchdb orderer zookeeper kafka; do
	docker pull hyperledger/fabric-$service:$version ;
	docker tag hyperledger/fabric-$service:$version hyperledger/fabric-$service:latest;
done