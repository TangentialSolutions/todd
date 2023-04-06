# frozen_string_literal: true

class LetterComponent < ViewComponent::Base
  attr_reader :letter, :letter_path, :letter_url

  def initialize(letter:)
    @letter = letter
  end

  def letter_path
    @letter_path ||= asset_path(letter.filename)
  end

  def letter_url
    @letter_url ||= asset_url(letter.filename)
  end

  def qr_code_svg
    qr = RQRCode::QRCode.new(letter_url)
    qr.as_svg(
      color: "fff",
      shape_rendering: "crispEdges",
      module_size: 5,
      standalone: true,
      use_path: true
    )
  end

  def formatted_text
    letter.formatted_text.gsub("<span>", "<span class='letter_content--search-term'>")
  end
end
