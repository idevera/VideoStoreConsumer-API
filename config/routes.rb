Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :customers, only: [:index]

  resources :movies, only: [:index, :show, :create], param: :title

  post "/rentals/:title/check-out", to: "rentals#check_out", as: "check_out"
  post "/rentals/:title/return", to: "rentals#check_in", as: "check_in"
  get "/rentals/overdue", to: "rentals#overdue", as: "overdue"
end


# Prefix Verb URI Pattern                         Controller#Action
# customers GET  /customers(.:format)                customers#index
# movies GET  /movies(.:format)                   movies#index
#  movie GET  /movies/:title(.:format)            movies#show
# check_out POST /rentals/:title/check-out(.:format) rentals#check_out
# check_in POST /rentals/:title/return(.:format)    rentals#check_in
# overdue GET  /rentals/overdue(.:format)          rentals#overdue
