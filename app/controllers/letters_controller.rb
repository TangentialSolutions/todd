class LettersController < ApplicationController
  def search
    search_term = params.require(:search_term)
    return error(:bad_request, ["Empty search term not allowed"]) if search_term.blank?

    @letters = Letter.select("*, ts_headline(
            'english',
            text,
            to_tsquery('english', '''#{search_term}'''),
            'MaxWords=10000001,MinWords=10000000,StartSel=<span>,StopSel=</span>') as formatted_text")
                      .where("to_tsvector('english', text) @@ to_tsquery(''?'')", search_term)
  end
end
