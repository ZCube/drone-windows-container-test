* Run
~~~
build-dockers.bat
cd pipeline-test
test.bat
~~~

* Result
~~~
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>go install github.com/cncd/pipeline/pipec

E:\Workspace\asdf\drone-windows-container-test\pipeline-test>pipec compile --system-arch windows/amd64
Successfully compiled pipeline.yml to pipeline.json

E:\Workspace\asdf\drone-windows-container-test\pipeline-test>pipec exec
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
proc "pipeline_clone_0" exited with status 0
proc "pipeline_step_0" started
Microsoft Windows [Version 10.0.14393]
(c) 2016 Microsoft Corporation. All rights reserved.
"dir /al c:\\"

 Volume in drive C has no label.
 Volume Serial Number is 047C-45B9

 Directory of c:\

11/23/2016  07:56 AM    <JUNCTION>     Documents and Settings [C:\Users]
04/22/2018  07:48 PM    <SYMLINKD>     test [\\?\ContainerMappedDirectories\BCE640BE-200C-4B79-A40E-AADDCD900C90]
               0 File(s)              0 bytes
               2 Dir(s)  128,530,554,880 bytes free

proc "pipeline_step_0" exited with status 0
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>
~~~
