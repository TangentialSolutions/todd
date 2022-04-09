# frozen_string_literal: true

class LettersListComponent < ViewComponent::Base
  attr_reader :letters

  def initialize(letters:)
    @letters = letters
  end
end
