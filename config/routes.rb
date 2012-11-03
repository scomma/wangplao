Wangplao::Application.routes.draw do
  resources :calendar, path: '' do
    resources :participants
  end
end
