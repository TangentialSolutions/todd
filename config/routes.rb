Rails.application.routes.draw do
  # redirect "/", to: "/letters"
  root to: "letters#index"

  get "letters", to: "letters#index"
  get "letters/search", to: "letters#search"

  get "people", to: "person#index"
  get "people/:id", to: "person#find"
  get "people/:id/edit", to: "person#edit"
  put "people/:id", to: "person#update"
  put "people/match/:id", to: "person#match"
  get "people/matches", to: "person#matches"
  get "codes", to: "codes#index"
end
