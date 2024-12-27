# typed: true
require 'sorbet-runtime'
require 'forwardable'
require_relative 'interface'
extend T::Sig

class Voice
  extend T::Sig
  
  sig { params(word: String).void }
  def say word
    puts word
  end
end

class Human
  extend T::Sig
  extend Forwardable
  include Birthday
  include HumanGender

  delegate :say => :@voice

  sig { returns(String) }
  attr_accessor :name

  sig { returns(Date) }
  attr_reader :birthday

  sig { returns(Voice) }
  attr_reader :voice

  sig { params(name: String, birthday: Date).void }
  def initialize name:, birthday:
    @name = name
    @birthday = birthday
  end

  sig { params(voice: Voice).void }
  def set_voice voice
    @voice = voice
  end

  sig { override.returns(Integer) }
  def age
    (Date.today.strftime('%Y%m%d').to_i - birthday.strftime('%Y%m%d').to_i) / 10000
  end

  sig { override.returns(T.any(Male, Female)) }
  def gender
    HumanGender::Male.new
  end

  sig { params(word: String).void }
  def say word
    T.unsafe(@voice).say word
  end
end
