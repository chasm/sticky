Sticky::Application.routes.draw do
  resources :postits, defaults: { format: :json } do
    resources :upvotes
  end

  root 'postits#index', defaults: { format: :json }
end
