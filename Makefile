APP_VERSION      ?=v0.4.7

.PHONY: all
all: help
		
.PHONY: tag 
tag: ## Creates release tag 
	git tag $(APP_VERSION)
	git push origin $(APP_VERSION)

.PHONY: tagless
tagless: ## Creates release tag 
	git tag -d $(APP_VERSION)
	git push --delete origin $(APP_VERSION)

.PHONY: help
help: ## Display available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk \
		'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


