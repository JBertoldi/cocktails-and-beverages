Rails.application.routes.draw do
  resources :cocktails, only: %i[index new create show] do
    resources :doses, only: %i[new create]
  end
  delete 'doses/:id', to: 'doses#destroy'
end
