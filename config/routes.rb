Rails.application.routes.draw do
  root 'static_pages#home'
	
  resources :clientes
  resources :cli_sistemas
  #root :to => "cli_sistemas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
