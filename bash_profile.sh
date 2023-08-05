#
# ~/.bash_profile
#
export BROWSER=/sbin/firefox

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Added by Toolbox App
export PATH="$PATH:/home/karl/.local/share/JetBrains/Toolbox/scripts"
export ANDROID_NDK="~/Android/Sdk/ndk/"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
