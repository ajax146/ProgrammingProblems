python:
	python3 ./$(problem)/$(problem).py

go:
	go run ./$(problem)/$(problem).go

cs:
	mcs -out:./$(problem)/$(problem).exe ./$(problem)/$(problem).cs
	mono ./$(problem)/$(problem).exe

java:
	mv ./$(problem)/$(problem).java ./$(problem)/Main.java
	javac ./$(problem)/Main.java
	mv ./$(problem)/Main.java ./$(problem)/$(problem).java
	java -cp ./$(problem) Main
	mv ./$(problem)/Main.class ./$(problem)/$(problem).class

typescript:
	cd ./$(problem) && \
	npm install --save-dev typescript @types/node && \
	npx tsc $(problem).ts && \
	echo "READY" && \
	node $(problem).js && \
	rm -rf node_modules package-lock.json package.json

swift:
	swift ./$(problem)/$(problem).swift

ruby:
	ruby ./$(problem)/$(problem).rb

cpp:
	g++ -std=c++23 ./$(problem)/$(problem).cpp -o ./$(problem)/$(problem).cppexe
	./$(problem)/$(problem).cppexe

rust:
	rustc ./$(problem)/$(problem).rs -o ./$(problem)/$(problem).rustc
	./$(problem)/$(problem).rustc

perl:
	perl ./$(problem)/$(problem).pl

php:
	php ./$(problem)/$(problem).php
