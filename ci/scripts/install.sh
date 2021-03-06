#!/bin/sh

# LICENSE
#
# install.sh is part of flyve-mdm-ios
#
# flyve-mdm-ios is a subproject of Flyve MDM. Flyve MDM is a mobile
# device management software.
#
# flyve-mdm-ios is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 3
# of the License, or (at your option) any later version.
#
# flyve-mdm-ios is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# ------------------------------------------------------------------------------
# @author    Hector Rondon <hrondon@teclib.com>
# @date      25/08/17
# @copyright Copyright © 2017-2018 Teclib. All rights reserved.
# @license   GPLv3 https://www.gnu.org/licenses/gpl-3.0.html
# @link      https://github.com/flyve-mdm/ios-mdm-agent
# @link      http://flyve.org/ios-mdm-agent
# @link      https://flyve-mdm.com
# ------------------------------------------------------------------------------

# update ruby
brew install ruby
# Update gem
gem update --system
# Clean Gem
gem cleanup
# Install jazzy for generate documentation
gem install jazzy
# Install jq for json parse
brew install jq
# Install transifex-client
easy_install pip
pip install transifex-client
# Install libs from package.json
yarn install
# Install gems from Gemfile
bundle install --path vendor/bundle
# Update fastlane plugin
bundle exec fastlane update_plugins
