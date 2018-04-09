# Rails.application.routes.draw do
# 	root "static_pages#home"#xu ly trang home khi can hien thi ngay localhost:3000
#   get 'pages/privacy'

#   get 'pages/inctroduction'

# 	get "static_pages/home"
# 	get "static_pages/help"
# 	get "static_pages/about"
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help', as: 'helf'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  resources :users
  get 'signup', to: 'users#new'
  end
