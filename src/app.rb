# typed: true
require_relative 'class'

human = Human.new 'marcwoozie'
voice = Voice.new
human.set_voice voice
human.say 'Hello World'
