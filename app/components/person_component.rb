# frozen_string_literal: true

class PersonComponent < ViewComponent::Base
  attr_reader :person

  def initialize(person:)
    @person = person
  end

  def full_name
    "#{person.first_name} #{person.last_name}"
  end

  def wishlist_link
    person.wishlist_linke
  end
end
