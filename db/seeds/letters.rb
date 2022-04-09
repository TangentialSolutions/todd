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
      LETTER_FILES.each do |file|
        file_path = Rails.root.join(BASE_PATH, file)
        unless File.exists?(file_path)
          puts "Unable to find #{file_path}"
          next
        end

        pdf = Yomu.new file_path

        puts "Created!" if Letter.create!(file_path: file_path, text: pdf.text)
      end
    end
  end
end