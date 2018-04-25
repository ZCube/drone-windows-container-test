* Run
~~~
build-dockers.bat
cd pipeline-test
test.bat
~~~

* Result
~~~
proc "pipeline_clone_0" started
+ git init
Initialized empty Git repository in c:/test/src/github.com/drone/envsubst/.git/
+ git remote add origin https://github.com/drone/envsubst.git
+ git fetch --no-tags --depth=50 origin +refs/heads/master:
From https://github.com/drone/envsubst
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> origin/master
+ git reset --hard -q d0876d3176965f9552a611cbd56e24a9264355e6
+ git submodule update --init --recursive
exit status 66
proc "pipeline_clone_0" exited with status 1
pipeline_clone_0 : exit code 1
~~~