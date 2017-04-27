require "irc_bot/version"

module IrcBot
  # Your code goes here...

require "cinch"

class HelloWorld
  include Cinch::Plugin

  match "hello"
  def execute(m)
    m.reply "Hello, World"
  end
end

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.freenode.net"
    c.channels = ["#cinch-bots"]
    c.plugins.plugins = [HelloWorld]
  end
  
end

bot.start

end
