# docker
build-docker:
	docker build -t shippy-service-consignment .
	
run-docker:
	docker run -p 50051:50051  -e MICRO_SERVER_ADDRESS=:50051 shippy-service-consignment

# RPC
proto-consignment:
	protoc -I. --go_out=plugins=grpc:. proto/consignment/consignment.proto
	
micro-consignment:
	protoc --proto_path=. --go_out=. --micro_out=. proto/consignment/consignment.proto
