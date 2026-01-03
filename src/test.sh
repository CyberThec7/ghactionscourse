EXPECTED="Heloo, Test!"

OUTPUT=$(node -e "console.log(require('./src/app) ('Test'))")

if ["$OUTPUT" == "$EXPECTED"]; then

echo " Test passed"

exit 0 

else 

echo "Test faild EXPECTED '$EXPECTED'but got '$OUTPUT'"

exit 1 

fi