# dotfiles

## Pre-requisites

### For MacOS

1. Install xcode from the App store.
2. Install xcode CLI.

    ```shell
    xcode-select --install
    ```

3. Install `git`.

   > For MacOS, `git --version` will trigger the UI dialog for installation, if not installation already.
   >
   > You may also use `brew` to install `git`.

4. Install [brew](/help/brew_setup.md) and packages like `wget`, `stow`, `vim`, etc.
5. Install [iTerm2](https://iterm2.com/downloads.html).
6. Install dark solarized theme for iTerm2, terminal and vim.

### For Linux

1. Update package list

    ```shell
    sudo apt update
    ```

2. Install `wget`, `stow`, `git` and `vim`.

    ```shell
    sudo apt install --assume-yes wget stow git-all vim
    ```

3. Install dark solarized theme for terminal and vim.

### Common Steps

1. Set `zsh` as default.

    ```shell
    chsh -s $(which zsh)
    ```

2. Install more file editors:
   1. Install [Sublime and its packages](/help/sublime_setup.md).
   2. Install [Visual Studio Code](/help/visual_studio_code_setup.md).
3. Install [Powerline Fonts](https://github.com/powerline/fonts)
4. Install [python, pip and related packages](/help/python_setup.md).

## Installation

1. Before installing you may want to cleanup any straggler `.*rc` files like:

    ```shell
    rm -f .bashrc .zshrc
    ```

2. Clone and install dotfiles:

    ```shell
    git clone --recursive git@github.com:dnath/dotfiles.git
    cd dotfiles
    stow -vt ~ .
    ```

### Optional Steps

1. Customize terminal prompt for [zsh](/.oh-my-zsh_more/agnoster_mod.zsh-theme) or [bash](.bash/prompt.bash).

## FAQs

### How to delink dotfiles?

```shell
cd ${REPO}
stow -Dvt ~ .
```

## TODOs

1. Autoformatter for py, c, cc, js, java, html, md, go, rb.
2. Auto test and presubmit
3. short links

## Appendix

Whenever Linux is referred, a Debian based disribution is assumed.
