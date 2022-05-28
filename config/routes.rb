Rails.application.routes.draw do
  get 'pages/main'
  root to: 'pages#main'
end
