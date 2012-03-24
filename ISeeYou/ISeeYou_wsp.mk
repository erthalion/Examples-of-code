.PHONY: clean All

All:
	@echo ----------Building project:[ ISeeYouHookLoader - Release ]----------
	@cd "ISeeYouHookLoader" && "mingw32-make.exe"  -j 2 -f "ISeeYouHookLoader.mk"
clean:
	@echo ----------Cleaning project:[ ISeeYouHookLoader - Release ]----------
	@cd "ISeeYouHookLoader" && "mingw32-make.exe"  -j 2 -f "ISeeYouHookLoader.mk" clean
