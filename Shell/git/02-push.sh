# Push changes
function push {
  if `printf "$PWD" | grep 'AUR' > /dev/null 2>&1`; then
    mksrcinfo
  fi
  git add --all                                        # Add all files to git
  git commit -m "$1"                                   # Commit with message = argument 1
  git push origin $(git-branch)                        # Push to the current branch
}
