Morphing::Engine.routes.draw do
  root to: "home#show"

  resources :notes, only: [:index, :create] do
    collection do
      post :set_info_box_preference
    end
  end
  resources :broken_notes, only: [:index, :create]
end
