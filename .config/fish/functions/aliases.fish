# System
alias fucking="sudo"
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
alias gr="git branch --merged | grep -v -E 'main|master|qa|staging|dev|development|lab|\*' | xargs -n 1 git branch -d"
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"

# Mercurial
alias hgs="hg status"
alias hgd="hg diff"
alias hga="hg add"
alias hgf="hg fetch"
alias hgb="hg branch"
alias hgc="hg commit"
alias hgm="hg merge"
alias hgpl="hg pull"
alias hgps="hg push"
alias hgck="hg checkout"
alias hgl="hg glog"

alias b="black ."
alias bb="bandit -r ."
alias bg="black (git diff --staged --name-only)"
alias x="echo No XQuartz for you!"

# Virtual Envs
alias v=". venv/bin/activate.fish"
alias d="deactivate"
alias dc="docker-compose"
alias db="docker-compose up db"
alias es="docker-compose up es"
alias web="docker-compose up web"
alias wweb="while true; docker-compose up web; echo 'Charging flux capacitor in 3.. 2.. 1..'; sleep 3; end;"
alias z="docker exec -it zett-web_web_1 bash"
alias docker-erase="docker system prune -f; docker rm (docker ps -a | awk '{print \$1}' | grep -v CONT);  docker rmi (docker images -a | awk '{print \$3}' | grep -v IMA)"

# Heroku
alias hr="heroku run"
alias hl="heroku logs"

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
