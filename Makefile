
./ollama: generate
	go build .

generate:
	go generate ./...

serve: ./ollama
	sh -c ". .env && ./ollama serve"

debug: 
	sh -c ". .env && dlv debug . -- serve"

clean:
	rm -f ./ollama
	rm -rf ./llm/build

