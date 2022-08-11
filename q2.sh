#!/bin/bash

cat /etc/shells | grep -E "^/usr" | grep -Eo "[a-zA-Z0-9_]+$"