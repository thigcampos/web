# Repository
SOURCE_BRANCH  = main
PAGES_BRANCH   = pages

# Paths
PAGES_PATH = ../pages
BUILD_DIR     = public

setup:
	@echo "Setting things up..."
	@git fetch origin $(PAGES_BRANCH)
	@git worktree add $(PAGES_PATH) $(PAGES_BRANCH)
	@git -C $(PAGES_PATH) pull origin --ff-only
	@echo "Done! Pages worktree available at $(PAGES_PATH)"

clean:
	@echo "Cleaning old build..."
	@find $(PAGES_PATH) -mindepth 1 -maxdepth 1 ! -name .git -exec rm -rf {} +

build: clean
	@echo "Building..."
	@ht build
	@cp -a $(BUILD_DIR)/. $(PAGES_PATH)/

committed-build: build
	@git -C $(PAGES_PATH) add --all
	@git -C $(PAGES_PATH) commit --quiet -m "build: $$(git rev-parse --short $(SOURCE_BRANCH))"
	@echo "Committed build for $$(git rev-parse --short $(SOURCE_BRANCH))."

publish: committed-build
	@git -C $(PAGES_PATH) push origin $(PAGES_BRANCH)

