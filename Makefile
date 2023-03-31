#Default to linux
.DEFAULT_GOAL := linux

#Define the targets and their dependencies
linux: cleanup
	sh ./bin/linux.sh

	
cleanup:
	sh ./bin/cleanup.sh

	chmod +x ./bin/linux.sh
	
	chmod +x ./bin/cleanup.sh
