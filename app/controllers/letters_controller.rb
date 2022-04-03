class LettersController < ApplicationController
  def search
    search_term = params.require(:search_term)
    return error(:bad_request, ["Empty search term not allowed"]) if search_term.blank?

    @letters = Letter.where("to_tsvector('english', text) @@ to_tsquery(?)", search_term)
  end
end
