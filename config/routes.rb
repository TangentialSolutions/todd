Rails.application.routes.draw do
  # redirect "/", to: "/letters"
  root to: "letters#index"

  get "letters", to: "letters#index"
  get "letters/search", to: "letters#search"

  get "people", to: "person#index"
  put "people/match/:id", to: "person#match"
  get "people/matches", to: "person#matches"
  get "codes", to: "codes#index"

  get "demo", to: "demo#index"
  post "demo/decode", to: "demo#decode"
  get "demo/encode", to: "demo#encode"
end
