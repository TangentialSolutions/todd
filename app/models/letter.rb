class Letter < ApplicationRecord
  BASE_PATH = "public/letters"

  def filepath
    @filepath ||= Rails.root.join(BASE_PATH, filename)
  end
end
