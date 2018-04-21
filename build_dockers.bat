pushd some-drone-git
go get github.com/drone-plugins/drone-git
go get github.com/drone-plugins/drone-git/...
go install github.com/drone-plugins/drone-git
copy %GOPATH%\bin\drone-git.exe .
docker build -t some_drone_git .
popd
pushd some-docker
docker build -t some_docker .
popd