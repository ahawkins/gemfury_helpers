# GemfuryHelpers :: It's like Bundler gem tasks for Gemfury

```ruby
gem 'gemfury_helpers'
```

In your Rakefile

```ruby
require 'gemfury_helper'

GemfuryHelpers::GemHelper.install
```

## Usage

**Make sure gemfury is setup before hand!**

```
ber -T

bundle exec rake build   # just like bundler
bundle exec rake install # just like bundler
bundle exec rake release # builds and pushes to gemfury
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
