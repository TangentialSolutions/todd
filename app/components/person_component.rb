# frozen_string_literal: true

class PersonComponent < ViewComponent::Base
  attr_reader :person

  def initialize(person:)
    @person = person
  end

  def element_id
    person.id
  end
end
