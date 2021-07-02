.PHONY: generate

# Generate Go Protobuf
generate: clean
	protoc \
		--go_out=. \
		--go_opt=paths=source_relative \
		--go-grpc_out=. \
		--go-grpc_opt=paths=source_relative rbac/implementation.proto
	ls -la \
		rbac/*.pb.go

# Clean Up
clean:
	rm -f rbac/*.pb.go
