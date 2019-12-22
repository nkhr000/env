- install pyenv  
`brew install pyenv`

- add path to config file (.bash_profile or .bashrc)
```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
source ~/.bash_profile
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
