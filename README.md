<h1 align="center">
  😍 + 🚀
  <br>Arch Spaceship Prompt Section<br>
</h1>

<h4 align="center">
  A section for Spaceship prompt to show if your shell is running in x86 env
</h4>

## Screenshot

The `arch` section shows `i386` if current shell running in `x86` env. Otherwise it will hide by default.

![alt screenshot](https://github.com/windwhinny/spaceship-arch/blob/main/assets/screenshot.png?raw=true)

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/windwhinny/spaceship-arch.git $ZSH_CUSTOM/plugins/spaceship-arch
```

Include `spaceship-arch` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-arch)
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-arch`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/windwhinny/spaceship-arch.git "$HOME/.zsh/spaceship-arch"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-arch/spaceship-arch.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add arch
```

## Options

This section is shown only in directories within a foobar context.

| Variable                   |              Default               | Meaning                              |
| :------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_ARCH_SHOW`   |               `true`               | Show current section                 |
| `SPACESHIP_ARCH_PREFIX` | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before section                |
| `SPACESHIP_ARCH_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_ARCH_SYMBOL` |               `︎☢︎ `                | Character to be shown before version |
| `SPACESHIP_ARCH_COLOR`  |             `red`               | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/)

## License

MIT © [Erci Time]

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
