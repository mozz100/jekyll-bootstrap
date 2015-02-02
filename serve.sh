#!/bin/sh
cd apps/$MOZZAPP
jekyll serve -H 0.0.0.0 --force_polling
