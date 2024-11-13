# build-nvim-image
docker image for building neovim

```
$ docker run --rm -v $(pwd)/nvim:/tmp/nvim $(docker build -q --build-arg NVIM_VERSION=v0.10.2 --build-arg NVIM_INSTALL_PREFIX=${HOME}/nvim .) bash -c "cp -pr ${HOME}/nvim /tmp/nvim"
$ sudo mv -i $(pwd)/nvim ${HOME}/nvim
```
