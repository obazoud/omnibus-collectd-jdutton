source 'https://rubygems.org'

# Use Berkshelf for resolving cookbook dependencies
gem 'berkshelf', '~> 3.2'

# Install omnibus software
gem 'omnibus', github: 'opscode/omnibus', tag: 'v4.0.0'

# Use Chef's software definitions. It is recommended that you write your own
# software definitions, but you can clone/fork Chef's to get you started.
gem 'omnibus-software', github: 'opscode/omnibus-software', ref: 'e84914a'

# Use Test Kitchen with Vagrant for converging the build environment
gem 'test-kitchen',    '~> 1.2'
gem 'kitchen-vagrant', '~> 0.15'
