# Sinatra-Test

This is a tiny test app to help @rtomayko investigate rtomayko/tilt issue #75

## Prerequisites

1. See `/.rvmrc`
2. See `Gemfile`

## Running the tests

    $ bundle
    $ rake

If your current shell's locale (`$ locale`) isn't \*.UTF-8 do the following to
prevent just-a-locale errors:

    $ env ru_RU.UTF-8 rake
