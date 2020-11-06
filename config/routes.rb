Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index new create show] do
    resources :doses, only: %i[new create]
  end
  delete 'doses/:id', to: 'doses#destroy', as: :dose_destroy
end
