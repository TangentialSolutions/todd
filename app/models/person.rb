class Person < ApplicationRecord
  has_one :match, class_name: Person.to_s, foreign_key: :people_id

  validates :wishlist_link, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }
end
