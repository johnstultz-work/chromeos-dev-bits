#!/bin/bash
HOST= <<ADD HOST >>
rsync -a --exclude bug456 --exclude vendor  --progress --inplace --delete $HOST:hikey/ ./hikey/


