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
    Invoke-WebRequest "https://zcube.kr/git-%GIT_VERSION%-win-container-patch.zip" \
    -OutFile git-%GIT_VERSION%-win-container-patch.zip -UseBasicParsing ; \
    Expand-Archive 'git-%GIT_VERSION%-win-container-patch.zip' -DestinationPath "C:\Git\mingw64" -Force ; \
    Remove-Item .\git-%GIT_VERSION%-win-container-patch.zip
    
# volume test
VOLUME "C:\\code"
RUN powershell.exe set-itemproperty -path \
    'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices' \
    -Name 'V:' -Value '\??\C:\code' -Type String
WORKDIR "V:\\"

ADD drone-git.exe /drone-git.exe
ENTRYPOINT [ "c:\\drone-git.exe" ]
