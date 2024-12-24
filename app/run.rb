# typed: true
require_relative 'test'

person = Person.new 'marcwoozie'
test = Voice.new
puts test.say(person)
