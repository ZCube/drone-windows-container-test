# test.bat
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>call test.bat
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>pipec exec
proc "pipeline_clone_0" started
+ git init
error: unable to write symref for HEAD: Permission denied
exit status 1
proc "pipeline_clone_0" exited with status 1
pipeline_clone_0 : exit code 1

# "pipeline_default:c:\\go" remove volumes from pipeline.json manually
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>pipec exec
proc "pipeline_clone_0" started
+ git init
Initialized empty Git repository in c:/go/src/github.com/drone/envsubst/.git/
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

# change drone-git image to bypass some_drone_git -> some_docker 
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>call test.bat
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>pipec exec
proc "pipeline_clone_0" started
Microsoft Windows [Version 10.0.14393]
(c) 2016 Microsoft Corporation. All rights reserved.

c:\go\src\github.com\drone\envsubst>proc "pipeline_clone_0" exited with status 0
proc "pipeline_step_0" started
A subdirectory or file c:\root already exists.
+ "dir"
 Volume in drive C has no label.
 Volume Serial Number is 047C-45B9

 Directory of C:\go\src\github.com\drone\envsubst

04/21/2018  10:40 AM    <DIR>          .
04/21/2018  10:40 AM    <DIR>          ..
               0 File(s)              0 bytes
               2 Dir(s)  51,432,005,632 bytes free
+ "ls"
'ls' is not recognized as an internal or external command,
operable program or batch file.
proc "pipeline_step_0" exited with status 0
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>