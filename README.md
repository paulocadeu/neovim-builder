<h1 align="center">
  <img  src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Neovim" >
  <br>
  <a href="https://neovim.io/doc/">Documentation</a>
</h1>

# Neovim builder
Simple container to build and compile Neovim

## How to:

> Build docker image
```
docker build -t neovim-compiler-image .
```
> Run docker container
```
docker run -it -d --rm --name neovim-container neovim-compiler-image bash
```
> Copy neovim from container to host
```
docker cp neovim-container:/tmp/neovim/build/bin/nvim /tmp/
```
> Create directory (if not exists)
```
mkdir -p /usr/local/bin/
```
> Install Neovim
```
sudo mv /tmp/nvim /usr/local/bin/nvim
```