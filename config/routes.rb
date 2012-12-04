TIO::Application.routes.draw do
  resources :mic_macs
  root :to => "home#index"

  get "amm/home"
  match '/micmac', to: 'mic_macs#show'
end
