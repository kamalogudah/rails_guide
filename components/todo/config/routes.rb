Todo::Engine.routes.draw do
  resources :todos

  root to: "todos#index"
end
