function xmlbeautify() {
	xmllint --format $1 --output $1
}