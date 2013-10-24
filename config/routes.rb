Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')




  get '/movies/search_tmdb'
  post '/movies/search_tmdb'  
  post '/movies/add_tmdb'


end
