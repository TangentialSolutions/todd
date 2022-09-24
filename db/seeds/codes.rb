module Seeds
  module Codes
    def self.seed
      raise StandardError.new("Unable to generate codes until people are seeded.") unless Person.all.present?

      Person.all.each do |person|
        5.times do
          Code.create!(code: SecureRandom.alphanumeric, person: person)
        end
      end
    end
  end
end

