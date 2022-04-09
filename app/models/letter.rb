class Letter < ApplicationRecord
  SUBDIRECTORY = "letters"
  BASE_PATH = "public/#{SUBDIRECTORY}"

  def filepath
    @filepath ||= Rails.root.join(BASE_PATH, filename)
  end

  def linkpath
    @linkpath ||= "/#{SUBDIRECTORY}/#{filename}"
  end
end
