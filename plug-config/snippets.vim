snippet html "HTML basic structure" b
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width" />
		<title>${1:`!p snip.rv = snip.basename.replace('-', ' ').capitalize()`}</title>
	</head>
	<body>
		${0:body}
	</body>
</html>
endsnippet

