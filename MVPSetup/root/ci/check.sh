#!/bin/bash
set -xe

LINT_OUTPUT="./app/build/reports/lint"
TOOLS="./tools"

./gradlew --no-daemon lintStageRelease findbugs pmd cpd

ERROR_COUNT=$(grep -c 'severity="Error"' "$LINT_OUTPUT/lint-results.xml")
WARNING_COUNT=$(grep -c 'severity="Warning"' "$LINT_OUTPUT/lint-results.xml")

if [ $ERROR_COUNT > 0 ] && [ $WARNING_COUNT > 0 ] ;
then
sed -e "s;%ERROR_COUNT%;$ERROR_COUNT;g" -e "s;%WARNING_COUNT%;$WARNING_COUNT;g" "$TOOLS/badges/lint-error-warning.svg" > "$LINT_OUTPUT/lint.svg"
else
cp "$TOOLS/badges/lint-success.svg" "$LINT_OUTPUT/lint.svg"
fi
