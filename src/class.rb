# typed: true
require 'sorbet-runtime'
require 'forwardable'
extend T::Sig

class Voice
  extend T::Sig

  sig { returns(Human) }
  attr_reader :human

  sig { params(human: Human).void }
  def set_human human
    @human = human
  end
  
  sig { params(word: String).void }
  def say word
    puts word
  end
end

class Human
  extend T::Sig
  extend Forwardable
  include Birthday

  delegate :say => :@voice

  sig { returns(String) }
  attr_accessor :name

  sig { returns(Voice) }
  attr_reader :voice

  sig { params(name: String).void }
  def initialize name
    @name = name
  end

  sig { params(voice: Voice).void }
  def set_voice voice
    voice.set_human self
    @voice = voice
  end

  sig { override.returns(Integer) }
  def age
    20
  end

  sig { params(word: String).void }
  def say word
    T.unsafe(@voice).say word
  end
end
