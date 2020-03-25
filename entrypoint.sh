#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^\.git.*$'}
REGEX=${INPUT_FIND_REGEX:-'.*'}
echo "checking files:"
if find . -regex "${REGEX}" -not -regex "${EXCLUSIONS}" | grep -e -v '^(.*\/)*(((\.?([a-z]|[0-9])+-?)+)|([A-Z]+(\.md)?))$' ; then
	return 1
fi

