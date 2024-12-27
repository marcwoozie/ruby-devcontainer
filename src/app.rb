# typed: true
require_relative 'class'
require 'date'

human = Human.new name: 'marcwoozie', birthday: Date.new(2000, 1, 1), gender: Male.new
voice = Voice.new
human.set_voice voice
human.say "Hello World, I am #{human.age} years old, and I am a #{human.gender.en}"
