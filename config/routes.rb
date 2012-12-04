TIO::Application.routes.draw do
  resources :mic_macs

  root :to => "home#index"
end
