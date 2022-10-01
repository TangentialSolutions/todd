class PersonController < ApplicationController
  attr_reader :person

  def index
    code = params.require(:code)
    person_code = Code.find_by!(code: code)
    @person = person_code.person
    @person.update!(ip_address: request.remote_ip)
  end

  # @get
  def find
    identify_person!
  end

  # @get
  def edit
    identify_person!
  end

  # @put
  def update
    identify_person!
  end

  def match
    identify_person!
    @matched_person = Person.where.not(id: person.id, people_id: nil).shuffle.sample
    person.match = @matched_person
    @matched_person.match = person
  end

  def matches
    @people = Person.where.not(people_id: nil)
  end

  private

  def identify_person!
    person_id = params[:id]
    @person = Person.find(person_id)
  end
end
