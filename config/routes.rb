Rails.application.routes.draw do
    post "/client" => "pages#create", as: "send"
    get "/admin" => "pages#admin"
    root "pages#landing"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
