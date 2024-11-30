.PHONY: test

build:
	amber scripts/build.am

test:
	amber test/main.am

test_remote:
	TEST_REMOTE=true amber test/main.am

test_e2e:
	amber src/main.am dist/zieh
	amber test/e2e.am
