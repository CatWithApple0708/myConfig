#!/bin/bash
echo "help--------->>"
echo "uboot-go.sh uboot.env print"
go run ${MyConfigPath}/src/u-boot-tools/uboot-go/main.go $@
