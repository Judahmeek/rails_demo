Rails.application.routes.draw do
  root 'demos#index'
  get '/', to: 'demos#index'
  get '/test', to: 'demos#test'
end
