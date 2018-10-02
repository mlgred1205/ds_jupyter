echo "Stopping Notebook"

#EDIT THE FOLLOWING. CHANGE TO YOUR DOCKER.EXE PATH
set "docker_bin=docker.exe"

%docker_bin% container stop notebookserver
%docker_bin% rm notebookserver
