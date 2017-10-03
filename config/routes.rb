Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  # A member route will require an ID, because it acts on a member.
  # A collection route doesn't because it acts on a collection of objects.
  resources :pages, path: '', only: [] do
    collection do
      get :home, :about
    end
  end

  resources :contacts, only: [:index]
end
