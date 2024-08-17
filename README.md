# ZSH dotfiles for MacOS or Debian and personal flavor

The following repository contains a basic configuration for the Z shell (ZSH) for a MacOS and Debian systems and with a personal flavour. It is not intended to compete with the feature set of an [ohmyz.sh](https://ohmyz.sh/). Rather, I want to thank the project for borrowing some stuff.

## Manual install

Dotfiles can be used by cloning the master or development branches. The development branch is not always fully tested and comes without any guarantees.

**MACOS**

```zsh
cd ~ && git clone --branch master https://github.com/de-posthac/dotfiles.git .dotfiles
rm ~/.zshrc && cp ~/.dotfiles/.zshrc.macos ~/.zshrc
rm ~/.gitignore && cp ~/.dotfiles/.gitignore ~/.gitignore
rm ~/.gitconfig && cp ~/.dotfiles/.gitconfig ~/.gitconfig
```

**Debian**

```zsh
apt update -y && apt install zsh zplug -y
cd ~ && git clone --branch master https://github.com/de-posthac/dotfiles.git .dotfiles
rm ~/.zshrc && cp ~/.dotfiles/.zshrc.debian ~/.zshrc
rm ~/.gitignore && cp ~/.dotfiles/.gitignore ~/.gitignore
rm ~/.gitconfig && cp ~/.dotfiles/.gitconfig ~/.gitconfig
chsh -s /bin/zsh && zsh
```

## Certifcates Authorities for node and npm

If you want to use private Certificate Authorities (CA) for NodeJS and NPM, you can place your CA chain file in the `~/.dotfiles/certs' path with the filename`ca-certificates.crt'. This will be taken into account by NodeJS.

## Working with different Git identities

If you work with different identities in Git, this is supported by my dotfiles. You can maintain multiple Git configurations with identities in our `~/.dotfiles/identities' directory.

1. Create a file with your default identity. This will be the default identity for all unspecified development paths. Create a `~/.dotfiles/identities/default.gitconfig` file:

```git
[user]
    name = <your name>
    email = <email>
    signingkey = <gpgkey id>
```

2.) Create another file for an additional identity with a new config, ex. `~/.dotfiles/identities/work.gitconfig` with same structure of 1.

3.) Add the following lines to your global git config:

```git
[include]
    path = ~/.dotfiles/identities/default.gitconfig

[includeIf "gitdir:/<your root development path for different identity>"]
    path = ~/.dotfiles/identities/<idenityConfig>.gitconfig
```

The includeIf part can be used as many times as you need. On Windows you need to use `gitdir/i:` instead of `gitdir:`. This will disable case sensitivity for your paths, but I have never tried it.

Of course, you can also store any other configuration for Git per path in the [conditional configuration](https://git-scm.com/docs/git-config#_includes).

## License

[MIT](http://opensource.org/licenses/MIT) License

Copyright (c) 2021 [de-posthac](https://github.com/de-posthac)

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
