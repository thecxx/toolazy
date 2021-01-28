#!/usr/bin/env bash

TOOLAZY_PATH=$(cd $(dirname "$0");pwd)


. "$TOOLAZY_PATH/env.sh"

# Initialize git repository.
function init_git()
{
  if [ -d "$PROJECT_PATH/.git" ]; then
    notice "It's already managed by git"
  else
    # 1. git init
    git init > /dev/null && notice "Initialize \`.git\`"
    # 2. README.md
    touch "$PROJECT_PATH/README.md" && vim "$PROJECT_PATH/README.md" && notice "Initialize \`README.md\`"
    # 3. gitignore
    cat > "$PROJECT_PATH/.gitignore" <<EOF
# ide
/.vscode/
/.idea/
/*.iml

# some files or directories
/vendor/
/.phpunit.result.cache

EOF
    vim "$PROJECT_PATH/.gitignore" && notice "Initialize \`.gitignore\`"
    # 4. LICENSE
  fi
}

if ! yn=$(ask "Usually a code project will choose a code management tool? (y/n, default n) "); then
  error "Ask failed"
fi
if [ "$yn" == "y" ]; then
  init_git
fi

