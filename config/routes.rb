Rails.application.routes.draw do
  # redirect "/", to: "/letters"
  root to: "letters#index"

  get "letters", to: "letters#index"
  get "letters/search", to: "letters#search"
end
