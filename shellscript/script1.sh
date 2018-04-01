#!/bin/bash

x=$(logname)
echo "Currently logged user and his logname: $x"
echo
echo "Current shell: $SHELL"
echo
echo "Home directory: $HOME"
echo
echo "Operating system type: $(arch)"
echo
echo "Current path setting: $PATH"
echo
echo "Current working directory: $(pwd)"
echo
echo "Currently logged number of users: $(users)"

