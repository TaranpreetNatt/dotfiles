export PATH=/Library/Frameworks/Python.framework/Versions/3.11/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/taranpreetnatt/.cargo/bin:"/Users/taranpreetnatt/Library/Application Support/JetBrains/Toolbox/scripts":/Applications/Kitty.app/Contents/MacOS:/Users/taranpreetnatt/Library/Python/3.11/bin:/usr/local/google-cloud-sdk/bin:/opt/homebrew/bin/cfssl:/opt/homebrew/bin/cfssljson:/Users/taranpreetnatt/.gvm/bin

# # To enable starship, need to configure more
# eval "$(starship init bash)"

# Gets the number of unstaged and untracked files and echo's them
git_branch() {
  # Get the current Git branch name
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    # Count the number of unstaged and untracked files
    changes=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
    # Format the output
    echo -e "\033[32;49;1mgit:(\033[37;49;1m$branch\033[32;49;1m)+$changes\033[0m"
  fi
}

# Prompt customization: directory git:(branch)+files
export PS1="\n\[\033[35;49;1m\w\[\033[0m\] \$(git_branch)\n"

# # alias set_http_proxy='no_proxy=localhost,127.0.0.0,127.0.1.1,127.0.1.1,local.home,192.168.0.0/16,*.docker.internal https_proxy=172.16.240.220:3128 http_proxy=172.16.241.173:3128; export no_proxy http_proxy https_proxy'
# alias set_http_proxy='no_proxy=localhost,127.0.0.0,127.0.1.1,127.0.1.1,local.home,192.168.0.0/16,*.docker.internal https_proxy=172.16.240.220:3128 http_proxy=172.16.241.173:3128; export no_proxy http_proxy https_proxy'
# set_http_proxy
# alias unset_http_proxy='unset no_proxy http_proxy https_proxy'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/taranpreetnatt/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/taranpreetnatt/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/taranpreetnatt/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/taranpreetnatt/Downloads/google-cloud-sdk/completion.bash.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
