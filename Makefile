KEY=hello
NAME=test

all: manifest source apk

manifest:
	@./scripts/manifest $(KEY) $(NAME) > AndroidManifest.xml

source:
	@rm -rf ./src
	@mkdir ./src
	@mkdir ./src/appm
	@mkdir ./src/appm/$(KEY)
	@./scripts/source $(KEY) > ./src/appm/$(KEY)/appm.java

apk:
	@ant debug

clean:
	@rm -rf ./AndroidManifest.xml
	@rm -rf ./gen
	@rm -rf ./bin
	@rm -rf ./src
