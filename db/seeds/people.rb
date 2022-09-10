module Seeds
  module People
    GUYS = {
      Keenan: :Zielke,
      Josiah: :Kessie,
      Jared: :Kieth,
      Trevor: :Broaddus
    }

    def self.seed
      GUYS.each do |first_name, last_name|
        Person.find_or_create_by!(first_name: first_name, last_name: last_name)
      end
    end
  end
end
