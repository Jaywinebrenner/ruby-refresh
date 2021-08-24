Rails.application.routes.draw do
    get 'posts', to: "posts#index"
    get 'posts/new', to: "posts#new"
    post 'posts', to: "posts#create"
    get 'posts/:id', to: "posts#show", as: :post

    get 'products', to:"products#index"
    get 'products/new', to: "products#new"
    post 'products', to: "products#create"
end
