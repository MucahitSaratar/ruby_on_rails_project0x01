Rails.application.routes.draw do
  get 'blog/read'
  get 'blog/index'
    root "anasayfa#index"
  get 'anasayfa/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
