Memer::Application.routes.draw do
  
  root to: "memes#index"

  resources :memes

end
