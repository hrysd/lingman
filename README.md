# Jizou

Nothing in particular.

## Installation

```ruby
#Gemfile
gem 'jizou', git: 'git@github.com:hrysd/jizou.git'
```

## Usage
before using gem, need to make bot of Lingr.

[Lingr/developer](http://lingr.com/developer)

```ruby
require 'jizou'

bot = Jizou.bot do
  set bot_id: 'BOTID'
  set room_id: 'ROOMID'
  set secret: 'SECRET'
end

bot.update('Hello World!')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
