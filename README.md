# RedSocket client

Send notification for clients listening on HTML5 websockets. See more details on http://red-socket.com .

## Installation

Add to your Gemfile and run the `bundle` command to install it.

```ruby
gem "red_socket"
```

**Requires Ruby 1.9 or later.**


## Usage

Call `RedSocket.notify('my_channel')` to send message to listening clients. By default it will send a 'notification' event which can be passed as the second argument.

```ruby
RedSocket.notify('my_channel', 'my_custom_event')
```

Additional message can be send within third parameter

```ruby
RedSocket.notify('my_channel', 'my_custom_event', 'it can be for example a json message, so it can be parsed by the browser')
```

## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/m4risu/red_socket/issues). You can contribute changes by forking the project and submitting a pull request. Feel free to do it.

This gem is created by Mariusz Wyrozebski and is under the MIT License.