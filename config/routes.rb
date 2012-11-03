Wangplao::Application.routes.draw do
  resources :calendars, path: '' do
    resources :participants
  end
end
