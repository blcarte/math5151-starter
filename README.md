# MATH5151 Starter

[![Build and Run Tests](https://github.com/blcarte/math5151-starter/actions/workflows/ci.yml/badge.svg?branch=main&kill_cache=1)](https://github.com/blcarte/math5151-starter/actions/workflows/ci.yml)

This is a starter repo for your homework assignments. 
It contains a couple of components:

- A starter package template you can use to build out your own package 
    called `math5151`. The files for this are in `pkg` folder.
- A Docker image set up for development that can be used with VS Code's 
    Remote Containers' extension

---


## Using the Starter in VS Code

1. Install the remote `Remote - Containers` extension
2. Type Ctrl/Cmd + Shift + P to open the command palate
3. Type `Remote-Containers: Open Folder in Container`, select the option
    when available and hit enter. 
    - This will build the development image
        and run it, mounting your current directory within the container
        so updates you make in the container will be reflected outside
        the container.
    - It will also install the `math5151` package via pip using the `e` flag
        so that changes you make to the package will be reflected without
        having to reinstall.  