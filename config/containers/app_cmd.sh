#!/usr/bin/env bash
# Prefix `bundle` with `exec` so puma shuts down gracefully on SIGTERM (i.e. `docker stop`)
exec bundle exec puma -v -C config/puma.rb -e $RAILS_ENV;
