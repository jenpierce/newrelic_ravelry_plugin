## Overview

This plugin reports the current total number of projects for the most popular pattern on Ravelry.  It was created as an exercise to test the plugin authoring process; the information reported is mostly arbitrary, but if you'd like to check it out, feel free!

## Instructions for running the Ravelry agent

1. Download the latest tagged version from `https://github.com/jenpierce/newrelic_ravelry_plugin/tags`
2. Extract to the location you want to run the example agent from
3. Run 'bundle install'
4. Copy `config/template_newrelic_plugin.yml` to `config/newrelic_plugin.yml`
5. Edit `config/newrelic_plugin.yml` and replace "YOUR_LICENSE_KEY_HERE" with your New Relic license key
6. Edit 'newrelic_ravelry_agent' and replace "YOUR_RAVELRY_API_KEY_HERE" and "YOUR_RAVELRY_PERSONAL_KEY_HERE" with your corresponding Ravelry keys
6. run `./newrelic_example_agent`
7. Go back to the Plugins list, and after a brief period you will see an entry for the Ravelry plugin

## Contributing

You are welcome to send pull requests to us - however, by doing so you agree that you are granting New Relic a non-exclusive, non-revokable, no-cost license to use the code, algorithms, patents, and ideas in that code in our products if we so choose. You also agree the code is provided as-is and you provide no warranties as to its fitness or correctness for any purpose.