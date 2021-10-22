# ZSH dotfiles for MacOS and personal flavor

The following repository contains a basic configuration for the Z-Shell (ZSH) for a macOS system and with my personal flavor. It does not want to compete with the feature set of an [ohmyz.sh](https://ohmyz.sh/). Rather I want to thank the project, because I borrowed some stuff.

## Support KDC LAB

If it helps you in any way, We would appreciate any support. A support can be an idea, an improvement or a pull request.

If you want to support [KDC LAB](https://github.com/kdc-lab/) with money, you can do it in the form of [donations](https://paypal.me/kdclab) . We will use all donations to fund our assembly costs or donate it to other open source projects we use, like as [ohmyz.sh](https://ohmyz.sh/)

## Manual install

Dotfiles can be copied by cloning of master branch:

```zsh
cd ~ && git clone --branch master https://github.com/de-posthac/dotfiles.git .dotfiles
rm ~/.zshrc && cp ~/.dotfiles/.zshrc ~/.zshrc
rm ~/.gitignore && cp ~/.dotfiles/.gitignore ~/.gitignore
rm ~/.gitconfig && cp ~/.dotfiles/.gitconfig ~/.gitconfig
```

## Certifcates Authorities for node and npm

If you want to use private Certifcates Authorities (CA) for NodeJS and NPM, you can place your ca chain file under the path `~/.dotfiles/certs` with file name `ca-certificates.crt`. This will be taken into account by NodeJS.

## Working with different Git identities

If you work with different identities in Git, it is supported by the dotfiles. You can maintain multiple Git configurations with identities in our `~/.dotfiles/identities` directory.

1. Create a file with your default identity. This will be the default idenity for all not specified development pathes. Create a file `~/.dotfiles/identities/default.gitconfig`:

```git
[user]
    name = <your name>
    email = <email>
    signingkey = <gpgkey>
```

2.) Create a different file for a additional identity with a new config file, ex. `~/.dotfiles/identities/work.gitconfig` with same structure of 1.

3.) Add in your global git config the follow lines:

```git
[include]
    path = ~/.dotfiles/identities/default.gitconfig

[includeIf "gitdir:/<your root development path for different identity>"]
    path = ~/.dotfiles/identities/<idenityConfig>.gitconfig
```

The includeIf part can be used as often as you need it. On Windows you have to use `gitdir/i:` instead of `gitdir:`. This disable case sensitivity for your paths, but i never tried.

In addition, you can of course store all other configurations for the Git in the [conditional configuration](https://git-scm.com/docs/git-config#_includes) per path.

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
