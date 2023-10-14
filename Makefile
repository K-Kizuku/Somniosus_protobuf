

.PHONY: setup-tools c-proto commit evans

setup-tools:
	@if ! [ -x ${GOPATH}/bin/buf ]; then go install github.com/bufbuild/buf/cmd/buf@latest  ; fi

c-proto:
	chmod +x ./scripts/create_proto.sh
	./scripts/create_proto.sh ${DIR}

commit:
	npx git-cz

evans:
	evans --proto ./protobuf/**/* --port 8080

