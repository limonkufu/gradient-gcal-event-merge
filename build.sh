#!/usr/bin/env bash

find . -path '*/.*' -prune -o -type f -print | zip ./gcal-multical-event-merge.zip -@
