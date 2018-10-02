echo "Starting up Notebook"

#EDIT THE FOLLOWING. CHANGE TO YOUR ORGS LICENSE_ID
SET "docker_image=mfreitas/specquantr"

#EDIT THE FOLLOWING. CHANGE TO YOUR PREFERRED HTTP PORT
SET port=8888

SET "share=/c/"
SET "docker_bin=docker.exe"

%docker_bin% run -d -p %port%:%port% -v "%share%":"/data" --name notebookserver %docker_image% /bin/bash -c "jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --notebook-dir='/data'"

timeout 2

start "" http://192.168.99.100:%port%
