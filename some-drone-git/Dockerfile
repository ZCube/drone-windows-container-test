FROM microsoft/windowsservercore

LABEL org.label-schema.version=latest
LABEL org.label-schema.vcs-url="https://github.com/drone-plugins/drone-git.git"
LABEL org.label-schema.name="Drone Git"
LABEL org.label-schema.vendor="Drone.IO Community"
LABEL org.label-schema.schema-version="1.0"

ENV GIT_VERSION 2.17.0

RUN powershell.exe [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 ; \
    Invoke-WebRequest "https://wingit.blob.core.windows.net/files/MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-BusyBox-64-bit.zip" \
    -OutFile MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-BusyBox-64-bit.zip -UseBasicParsing ; \
    Expand-Archive 'MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-BusyBox-64-bit.zip' -DestinationPath "c:/Git" -Force ; \
    Remove-Item .\MinGit-prerelease-2.17.0.windows.1.36.gdf4ca5fb72-BusyBox-64-bit.zip && \
    setx /m PATH "%PATH%;C:\Git\cmd"

# volume test
VOLUME "C:\\code"
RUN powershell.exe set-itemproperty -path \
    'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices' \
    -Name 'V:' -Value '\??\C:\code' -Type String
WORKDIR "V:\\"

ADD drone-git.exe /drone-git.exe
ENTRYPOINT [ "c:\\drone-git.exe" ]
