FROM microsoft/windowsservercore

LABEL org.label-schema.version=latest
LABEL org.label-schema.vcs-url="https://github.com/drone-plugins/drone-git.git"
LABEL org.label-schema.name="Drone Git"
LABEL org.label-schema.vendor="Drone.IO Community"
LABEL org.label-schema.schema-version="1.0"

ENV GIT_VERSION 2.17.0

RUN powershell.exe [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 ; \
    Invoke-WebRequest "https://github.com/git-for-windows/git/releases/download/v%GIT_VERSION%.windows.1/MinGit-%GIT_VERSION%-busybox-64-bit.zip" \
    -OutFile MinGit-%GIT_VERSION%-busybox-64-bit.zip -UseBasicParsing ; \
    Expand-Archive 'MinGit-%GIT_VERSION%-busybox-64-bit.zip' -DestinationPath "c:/Git" -Force ; \
    Remove-Item .\MinGit-%GIT_VERSION%-busybox-64-bit.zip && \
    setx /m PATH "%PATH%;C:\Git\cmd"

RUN powershell.exe [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 ; \
    Invoke-WebRequest "https://wingit.blob.core.windows.net/files/MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-64-bit.zip" \
    -OutFile MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-64-bit.zip -UseBasicParsing ; \
    Expand-Archive 'MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-64-bit.zip' -DestinationPath "c:/Git2" -Force ; \
    Remove-Item .\MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-64-bit.zip

RUN copy /y "C:\Git2\mingw64\bin\git.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-credential-store.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-fast-import.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-http-fetch.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-http-push.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-remote-http.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-remote-https.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-sh-i18n--envsubst.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-show-index.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-upload-pack.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-remote-http.exe" "C:\Git\mingw64\bin\" && \
    copy /y "C:\Git2\mingw64\bin\git-receive-pack.exe" "C:\Git\mingw64\bin\"

# volume test
VOLUME "C:\\code"
RUN powershell.exe set-itemproperty -path \
    'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices' \
    -Name 'V:' -Value '\??\C:\code' -Type String
WORKDIR "V:\\"

ADD drone-git.exe /drone-git.exe
ENTRYPOINT [ "c:\\drone-git.exe" ]
