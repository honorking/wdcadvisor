#!/bin/bash

GOOS="linux" GOARCH="amd64" go build run.go 
[ $? -ne 0 ] && exit 1 

GOOS="linux" GOARCH="amd64" go build uploadCadvisorData.go pushDatas.go mylog.go getDatas.go dataFunc.go
[ $? -ne 0 ] && exit 1 

