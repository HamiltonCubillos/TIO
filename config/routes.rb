TIO::Application.routes.draw do
  resources :mic_macs
  root :to => "home#index"

  match '/micmac', to: 'mic_macs#show'
end
