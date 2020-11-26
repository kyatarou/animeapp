Rails.application.routes.draw do
  root 'animes#index'
  get 'home/top'
  get 'animes/new' => 'animes#new'
  post 'animes' => 'animes#create'
  get 'animes/actor_search' => 'animes#actor_search'
  get 'anime_search/anime_search1' => 'anime_search#anime_search1'
  get 'anime_search/anime_search2' => 'anime_search#anime_search2'
  get 'anime_search/anime_search3' => 'anime_search#anime_search3'
  get 'anime_search/anime_search4' => 'anime_search#anime_search4'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
