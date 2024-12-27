# typed: true

module Birthday
  extend T::Sig
  extend T::Helpers

  interface!

  sig { abstract.returns(Integer) }
  def age
  end
end
