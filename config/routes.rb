Rails.application.routes.draw do
  #resources :birds, only: [:index, :show, :create, :update, :destroy]

  #since we are using all of the restful routes, we can omit "only"::
  resources :birds 
  patch "/birds/:id/like", to: "birds#increment_likes"
end
