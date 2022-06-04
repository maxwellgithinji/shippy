# docker
build-docker:
	docker build -t shippy-service-user .
	
run-docker:
	docker run -p 50053:50051 -e MICRO_SERVER_ADDRESS=:50051 shippy-service-user

# RPC
proto-user:
	protoc -I. --go_out=plugins=grpc:. proto/user/user.proto
	
micro-user:
	protoc --proto_path=. --go_out=. --micro_out=. proto/user/user.proto
