in .bashrc
```bash
source ~/.config/bash/bashrc.sh
. "$HOME/.cargo/env"

# added by travis gem
[ ! -s /home/karl/.travis/travis.sh ] || source /home/karl/.travis/travis.sh
```
in .bash_profile
```bash
source ~/.config/bash/bash_profile.sh
. "$HOME/.cargo/env"
```
in .profile
```bash
source ~/.config/bash/profile.sh
. "$HOME/.cargo/env"
```
