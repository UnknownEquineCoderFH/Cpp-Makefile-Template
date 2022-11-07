APP_NAME := app.out

.PHONY: all
all: run

.SILENT: run execute build clean

run: execute clean
	
execute: build
	./${APP_NAME}

build: src/main.cpp
	g++ -std=c++2a src/*.cpp src/*/*.cpp -o ${APP_NAME}

.PHONY: clean
clean:
	rm ${APP_NAME}