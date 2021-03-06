Rails.application.routes.draw do
    root "anasayfa#index"
  get 'workonasm/run'
  get 'workonasm/index'
  get 'anasayfa/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
