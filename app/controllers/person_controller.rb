class PersonController < ApplicationController
  def index
    code = params.require(:code)
    person_code = Code.find_by!(code: code)
    @person = person_code.person
    @person.update!(ip_address: request.remote_ip)
  end

  def match
    person_id = params[:id]
    person = Person.find(person_id)
    @matched_person = Person.where.not(id: person_id, people_id: nil).shuffle.sample
    person.match = @matched_person
    @matched_person.match = person
  end

  def matches
    @people = Person.where.not(people_id: nil)
  end
end
