Rails.application.routes.draw do

  devise_for :users
	root 'payments#checkouts'

	resources :payments

	get '/checkouts', to: "payments#checkouts"
	post '/create-checkout-session', to: "payments#create_checkout_session"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
