# frozen_string_literal: true

class LetterCollectionComponent < ViewComponent::Base
  attr_reader :letters

  def initialize(letters:)
    @letters = letters.respond_to?(:each) ? letters : [letters]
    raise StandardError, "All letters should be instances of Letter" unless letters.all? { |l| l.is_a?(Letter) }
  end
end
