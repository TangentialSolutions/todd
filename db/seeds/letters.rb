module Seeds
  module Letters
    BASE_PATH = "public/letters"
    LETTER_FILES = %w[
      ArrowEaster2020.pdf
      Easter2012Liam.pdf
      Easter2013.pdf
      Easter2016.pdf
      Easter2017.pdf
      Easter2017B.pdf
      Easter2018.pdf
      Easter2021.pdf
      Easter2021Final.pdf
      Todd2014.pdf
      Todd2015.pdf
      Todd2019.pdf
      Todd2019B.pdf
      Todd2EmployeeIncidentReportForm.pdf
    ]

    def self.seed
      Letter.destroy_all if ENV["FORCE_RESEED"].present?
      puts "Destroyed all letters" if ENV["FORCE_RESEED"].present?

      LETTER_FILES.each do |file|
        filepath = Rails.root.join(BASE_PATH, file)
        unless File.exists?(filepath)
          puts "Unable to find #{filepath}"
          next
        end

        pdf = Yomu.new filepath

        puts "Created #{file}!" if Letter.create!(filename: file, text: pdf.text)
      end
    end
  end
end