# frozen_string_literal: true

class PeopleMatcherComponent < ViewComponent::Base
  attr_reader :people, :current_person

  def initialize(people:, current_person:)
    @people = people
    @current_person = current_person
  end
end
