Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
      patch :confirm
    end
    member do
      patch :confirm  # confirm_blogs_pathの生成に必要
    end
  end
end
