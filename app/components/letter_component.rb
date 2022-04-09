# frozen_string_literal: true

class LetterComponent < ViewComponent::Base
  attr_reader :letter

  def initialize(letter:)
    @letter = letter
  end
end
