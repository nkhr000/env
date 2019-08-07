- install pyenv  
`brew install pyenv`

- add path to config file (.bash_profile for bash shell)

```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

- confirm available versions  
`pyenv install -l`

- install python3  
`pyenv install 3.6.5`


- confirm installed versions  
`pyenv versions`

- confirm local version  
`pyenv local`

- unset local version  
`pyenv local --unset`

- set local version  
`pyenv local 3.6.5`

- confirm global version  
`pyenv global `

- change global version  
`pyenv global 3.6.5`
