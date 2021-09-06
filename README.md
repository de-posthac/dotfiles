# ZSH dotfiles for MacOS and personal flavor

The following repository contains a basic configuration for the Z-Shell (ZSH) for a macOS system and with my personal flavor. It does not want to compete with the feature set of an [ohmyz.sh](https://ohmyz.sh/). Rather I want to thank the project, because I borrowed some stuff.

## Support KDC LAB

If it helps you in any way, We would appreciate any support. A support can be an idea, an improvement or a pull request.

If you want to support [KDC LAB](https://github.com/kdc-lab/) with money, you can do it in the form of [donations](https://paypal.me/kdclab) . We will use all donations to fund our assembly costs or donate it to other open source projects we use, like as [ohmyz.sh](https://ohmyz.sh/)

## Manual install

Dotfiles can be copied by cloning of master branch:

```zsh
cd ~ && git clone --branch master https://github.com/de-posthac/dotfiles.git .dotfiles
rm ~/.zshrc && cp .dotfiles/.zshrc ~/.zhsrc
rm ~/.gitignore && cp .dotfiles/.gitignore ~/.gitignore
rm ~/.gitconfig && cp .dotfiles/.gitconfig ~/.gitconfig
```

## Certifcates Authorities for node and npm

If you want to use private Certifcates Authorities (CA) for NodeJS and NPM, you can place your ca chain file under the path `~/.dotfiles/certs` with file name `ca-certificates.crt`. This will be taken into account by NodeJS.

## License

[MIT](http://opensource.org/licenses/MIT) License

Copyright (c) 2021 KDC LAB / [de-posthac](https://github.com/de-posthac)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
