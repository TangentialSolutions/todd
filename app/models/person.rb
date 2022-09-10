class Person < ApplicationRecord
  has_one :match, class_name: Person.to_s, foreign_key: :people_id
end
