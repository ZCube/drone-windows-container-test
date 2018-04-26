* Run
~~~
build-dockers.bat
cd pipeline-test
test.bat
~~~

* Result
~~~
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>test

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
+ "cd c:\\root"
+ "mkdir c:\\root\\test"


    Directory: C:\root


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----        4/26/2018   9:36 PM                test
+ "dir"
d-----        4/26/2018   9:36 PM                test
+ "ls"
d-----        4/26/2018   9:36 PM                test
+ "cd c:\\"
+ "dir"


    Directory: C:\


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----         3/5/2018   4:42 AM                PerfLogs
d-r---        4/26/2018   9:36 PM                Program Files
d-----        7/16/2016  10:18 PM                Program Files (x86)
d-----        4/26/2018   9:36 PM                root
d----l        4/26/2018   9:36 PM                test
d-r---         3/5/2018   4:54 AM                Users
d-----         3/5/2018   4:52 AM                Windows
-a----       11/23/2016   7:45 AM           1894 License.txt
+ "ls"
d-----         3/5/2018   4:42 AM                PerfLogs
d-r---        4/26/2018   9:36 PM                Program Files
d-----        7/16/2016  10:18 PM                Program Files (x86)
d-----        4/26/2018   9:36 PM                root
d----l        4/26/2018   9:36 PM                test
d-r---         3/5/2018   4:54 AM                Users
d-----         3/5/2018   4:52 AM                Windows
-a----       11/23/2016   7:45 AM           1894 License.txt
+ "dir c:\\test"


    Directory: C:\test


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----        4/26/2018   9:36 PM                src
+ "ls c:\\test"
d-----        4/26/2018   9:36 PM                src
+ "dir c:\\test\\src\\github.com\\drone\\envsubst"


    Directory: C:\test\src\github.com\drone\envsubst


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----        4/26/2018   9:36 PM                parse
-a----        4/26/2018   9:36 PM            185 .drone.yml
-a----        4/26/2018   9:36 PM            519 eval.go
-a----        4/26/2018   9:36 PM           4289 eval_test.go
-a----        4/26/2018   9:36 PM           4186 funcs.go
-a----        4/26/2018   9:36 PM           1587 funcs_test.go
-a----        4/26/2018   9:36 PM           1086 LICENSE
-a----        4/26/2018   9:36 PM            736 README
-a----        4/26/2018   9:36 PM           3372 template.go
-a----        4/26/2018   9:36 PM             18 template_test.go
+ "ls c:\\test\\src\\github.com\\drone\\envsubst"
d-----        4/26/2018   9:36 PM                parse
-a----        4/26/2018   9:36 PM            185 .drone.yml
-a----        4/26/2018   9:36 PM            519 eval.go
-a----        4/26/2018   9:36 PM           4289 eval_test.go
-a----        4/26/2018   9:36 PM           4186 funcs.go
-a----        4/26/2018   9:36 PM           1587 funcs_test.go
-a----        4/26/2018   9:36 PM           1086 LICENSE
-a----        4/26/2018   9:36 PM            736 README
-a----        4/26/2018   9:36 PM           3372 template.go
-a----        4/26/2018   9:36 PM             18 template_test.go


proc "pipeline_step_0" exited with status 0
E:\Workspace\asdf\drone-windows-container-test\pipeline-test>
```

* Todo
use appveyor.

