# typed: true
require 'sorbet-runtime'
extend T::Sig

class Voice
  extend T::Sig

  sig { params(person: Person).returns(String) }
  def say(person)
    "My name is #{person.name}"
  end
end

class Person
  extend T::Sig

  attr_accessor :name

  sig { params(name: String).void }
  def initialize name
    @name = name
  end
end