#!/usr/bin/env bash
echo "Stopping Notebook"
docker container stop notebookserver
docker rm notebookserver
