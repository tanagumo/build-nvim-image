# build-nvim-image
docker image for building neovim

```
$ docker run --rm -v ./:/tmp/work $(docker build -q .) bash -c 'cp /usr/local/bin/nvim /tmp/work; cp -r /usr/local/share/nvim/runtime /tmp/work/nvim_runtime; cp -r /usr/local/lib/nvim /tmp/work/nvim_lib'
$ sudo mv -i ./nvim /usr/local/bin
$ sudo bash -c 'mkdir -p /usr/local/share/nvim && mv -i nvim_runtime /usr/local/share/nvim/runtime && mkdir -p /usr/local/lib && mv -i nvim_lib /usr/local/lib/nvim'
```
