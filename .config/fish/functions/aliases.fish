# System
alias l="ls -la"
alias c="clear"
alias q="exit"

# Git
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias ga="git add"
alias gad="git add (git diff --name-only)"
alias gf="git fetch"
alias gb="git branch"
alias gc="git commit"
alias gm="git merge"
alias gpl="git pull"
alias gps="git push"
alias gck="git checkout"
alias gr="git branch --merged | grep -v -E 'master|qa|development|\*' | xargs -n 1 git branch -d"
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"

alias b="black (git diff --staged --name-only)"
alias x="echo No XQuartz for you!"

# Virtual Envs
alias v=". venv/bin/activate.fish"
alias d="deactivate"
alias db="docker-compose up db"
alias es="docker-compose up es"

# Heroku
alias hr="heroku run"
alias hrd="heroku run -a su-directory-backend-dev bash"
alias hrq="heroku run -a su-directory-backend-qa bash"
alias hrp="heroku run -a su-directory-backend bash"
alias hrds="heroku run -a su-directory-backend-dev python manage.py shell_plus"
alias hrqs="heroku run -a su-directory-backend-qa python manage.py shell_plus"
alias hrps="heroku run -a su-directory-backend python manage.py shell_plus"
alias hl="heroku logs"
alias hld="heroku logs -a su-directory-backend-dev -t"
alias hlq="heroku logs -a su-directory-backend-qa -t"
alias hlp="heroku logs -a su-directory-backend -t"

# Django
alias r="python manage.py runserver_plus"
alias s="python manage.py showmigrations"
alias sp="python manage.py shell_plus"
alias su="python manage.py show_urls --format=table"
alias m="python manage.py migrate"
alias mm="python manage.py makemigrations"
alias t="python manage.py test --settings=singularityu.test_settings"

# Phoenix
alias i="iex -S mix"
alias p="mix phx.server"

# Postgres
alias pgl="psql -U postgres -h localhost"

# Yarn
alias y="yarn"
alias yd="yarn dev"
