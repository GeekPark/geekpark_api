# GeekparkApi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/geekpark_api`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geekpark_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geekpark_api

## Config

create `config/initializes/geekpark_api.rb` and put your settings here, you can override default settings.

```ruby
# :app_id, :app_secret, :signature, :user_api_base_uri, :event_api_base_uri
GeekparkApi.configure do |config|
  config.user_api_base_uri = 'http://localhost:3000/api/v1/user'
end
```

## Usage

```ruby
GeekparkApi::User.update(TOKEN, {username: 'ligan1231'})

#  {:status=>200,
#   :body=>
#    {"uuid"=>"67271786-8fff-49d0-a180-51b1eb7defb7",
#     "username"=>"ligan1231",
#     "realname"=>"",
#     "email"=>"gavin.li1986@gmail.com",
#     "company"=>"",
#     "position"=>"",
#     "mobile"=>"",
#     "avatar"=>
#      {"url"=>"http://7mnpep.com2.z0.glb.clouddn.com/uploads/user/avatar/000/210/689/e0037d0ceac78ccfb7f33b99020b5165.jpeg",
#       "small"=>{"url"=>"http://7mnpep.com2.z0.glb.clouddn.com/uploads/user/avatar/000/210/689/small_e0037d0ceac78ccfb7f33b99020b5165.jpeg"},
#       "thumb"=>{"url"=>"http://7mnpep.com2.z0.glb.clouddn.com/uploads/user/avatar/000/210/689/thumb_e0037d0ceac78ccfb7f33b99020b5165.jpeg"},
#       "medium"=>{"url"=>"http://7mnpep.com2.z0.glb.clouddn.com/uploads/user/avatar/000/210/689/medium_e0037d0ceac78ccfb7f33b99020b5165.jpeg"}},
#     "bio"=>""}}
#
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/geekpark_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
