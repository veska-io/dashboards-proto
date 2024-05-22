grpc-with-descriptors:
	protoc -I proto proto/dashboards.proto \
			--go_out=gen/go/dashboards \
			--go_opt=paths=source_relative \
			--go-grpc_out=gen/go/dashboards \
			--go-grpc_opt=paths=source_relative \
			--descriptor_set_out=gen/go/dashboards/api_descriptor.pb \
			--include_imports \
			--include_source_info
grpc-with-descriptors-github:
	protoc -I proto dashboards.proto \
			--go_out=. \
			--go_opt=paths=source_relative \
			--go-grpc_out=. \
			--go-grpc_opt=paths=source_relative \
			--descriptor_set_out=./api_descriptor.pb \
			--include_imports \
			--include_source_info