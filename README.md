# tmux-kubernetes
show kubernetes context and namespace to tmux status.

## Requirements
- tmux
- kubectl

## Installation
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```bash
set -g @plugin 'hatappi/tmux-kubernetes'
```

Hit `prefix + I` to fetch the plugin and source it.

### Manual Installation

Clone the repo:

```bash
$ git clone https://github.com/hatappi/tmux-kubernetes.git ~/.tmux/plugins/tmux-kubernetes
```

Reload TMUX environment:

```bash
$ tmux source-file ~/.tmux.conf
```

## Usage

```
#(/bin/bash $HOME/.tmux/plugins/tmux-kubernetes/kubernetes.tmux red blue)
```