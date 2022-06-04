# frozen_string_literal: true

class LetterComponent < ViewComponent::Base
  attr_reader :letter, :letter_path, :letter_url, :qr

  def initialize(letter:)
    @letter = letter
  end

  def letter_path
    @letter_path ||= asset_path(letter.filename)
  end

  def letter_url
    @letter_url ||= asset_url(letter.filename)
  end

  def qr
    @qr ||= RQRCode::QRCode.new(letter_url)
  end

  def qr_code_svg
    qr.as_svg(
      color: "fff",
      shape_rendering: "crispEdges",
      module_size: 5,
      standalone: true,
      use_path: true
    )
  end

  def qr_code_png
    png = qr.as_png(size: 250, fill: "white", border_modules: 0, module_px_size: 0)

    png
  end
end
