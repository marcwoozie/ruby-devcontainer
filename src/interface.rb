# typed: true

module Birthday
  extend T::Sig
  extend T::Helpers

  interface!

  sig { abstract.returns(Integer) }
  def age
  end
end

module Gender
  extend T::Sig
  extend T::Helpers

  interface!
  
  sig { abstract.returns(String) }
  def en
  end

  sig { abstract.returns(String) }
  def ja
  end
end

module HumanGender
  extend T::Sig
  extend T::Helpers

  interface!

  sig { abstract.returns(T.any(Male, Female)) }
  def gender
  end

  class Male
    extend T::Sig
    include Gender
    sig { override.returns(String) }
    def en() 'male' end

    sig { override.returns(String) }
    def ja() '男性' end
  end
  class Female
    extend T::Sig
    include Gender
    sig { override.returns(String) }
    def en() 'female' end
    sig { override.returns(String) }
    def ja() '女性' end
  end
end
