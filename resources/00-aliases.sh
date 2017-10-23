alias pw="pwgen -cny 32 1"
alias pull="git fetch --all && git pull"
alias rebase="git fetch --all && git pull && git rebase -i origin/master"
alias phpdepend='pdepend --summary-xml=./sum.xml --jdepend-chart=./jdepend.svg --overview-pyramid=./pyramid.svg .'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


function xmlbeautify() {
	xmllint --format $1 --output $1
}
