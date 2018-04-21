FROM microsoft/windowsservercore

LABEL org.label-schema.version=latest
LABEL org.label-schema.vcs-url="https://github.com/drone-plugins/drone-git.git"
LABEL org.label-schema.name="Drone Git"
LABEL org.label-schema.vendor="Drone.IO Community"
LABEL org.label-schema.schema-version="1.0"

ENV GIT_VERSION 2.11.1
# Git
RUN powershell.exe [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 ; \
    Invoke-WebRequest "https://github.com/git-for-windows/git/releases/download/v%GIT_VERSION%.windows.1/Git-%GIT_VERSION%-64-bit.exe" \
    -OutFile Git-%GIT_VERSION%-64-bit.exe -UseBasicParsing ; \
    Start-Process -FilePath 'Git-%GIT_VERSION%-64-bit.exe' -ArgumentList '/SILENT' -Wait ; \
    Remove-Item .\Git-%GIT_VERSION%-64-bit.exe
    
RUN setx /m PATH "%PATH%;C:\Program Files\Git\bin"

ADD drone-git.exe /drone-git.exe
WORKDIR "\\root"
ENTRYPOINT [ "\\drone-git.exe" ]
