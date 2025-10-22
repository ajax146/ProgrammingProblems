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
	
