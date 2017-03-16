Rails.application.routes.draw do
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    patch "/content" => "pages#update"
    get "/message" => "pages#message"
    get "/content" => "pages#content"
    post "/client" => "pages#create", as: "send"
    get "/admin" => "pages#admin"
    root "pages#landing"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
