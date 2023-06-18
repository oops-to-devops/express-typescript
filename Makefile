semgrep-sarif:
	semgrep  --metrics off --sarif --exclude *.test.ts  --config "p/typescript" . > semgrep.sarif
semgrep-junit:
	semgrep  --metrics off --junit-xml --exclude *.test.ts --config "p/typescript" . > semgrep_junit.xml
eslint-sarif:
	eslint . --ext .js,.jsx,.ts,.tsx --ignore-pattern *.test.ts  -f @microsoft/eslint-formatter-sarif -o eslint.sarif
eslint-json:
	eslint . -f json --ext .js,.jsx,.ts,.tsx --ignore-pattern *.test.ts -o eslint-report.json .
sonar:
	node sonarqube-scanner.js
snyk-sarif:
	snyk code test --sarif --sarif-file-output=snyk.sarif
