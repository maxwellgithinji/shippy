# docker
build-docker:
	docker build -t shippy-service-vessel .
	
run-docker:
	docker run -p 50052:50051 -e MICRO_SERVER_ADDRESS=:50051 shippy-service-vessel

# RPC
proto-vessel:
	protoc -I. --go_out=plugins=grpc:. proto/vessel/vessel.proto
	
micro-vessel:
	protoc --proto_path=. --go_out=. --micro_out=. proto/vessel/vessel.proto
