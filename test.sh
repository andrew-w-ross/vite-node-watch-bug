#!/bin/bash

echo "First change this will update correctly.";
printf "console.log(\"From index.ts First Change\");" > index.ts;
sleep 1;

echo "Second change this it'll print the message from the first change.";
printf "console.log(\"From index.ts Second Change\");" > index.ts;
sleep 1;

echo "And a third change for luck, still prints the old message";
printf "console.log(\"From index.ts Third Change\");" > index.ts;
