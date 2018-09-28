Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # post "chats/:id/destroy" => "chats#destroy"

resources :chat


  get "post/show/:id" => "post#show"


  namespace :chat, default: {format: :json} do
   resources :chats
  end


end
