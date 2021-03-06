Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "account/registrations"}

  resources :conversations do
    member do
      post :reply
    end
  end

  resources :messages

  #联系人
  namespace :contacts do
    resources :users do
      resources :conversations
      member do
        post :create_conversation
      end
    end
  end
  #./联系人


  #用户中心
  namespace :account do
    resources :user
    resources :requests do
      member do
        get :rating
        get :display
        post :choose
        post :make_payment

        post :rating_submit
      end
      resources :users
    end
    resources :conversations do
      member do
        post :reply
      end
    end
    resources :user_conversations

    resources :works
  end
  #./用户中心

  #管理后台
  namespace :admin do
    resources :users do
      member do
        post :make_designer
        post :make_not_designer
        post :reject
        post :accept
      end
    end
    resources :works do
      member do
        post :publish
        post :hide
      end
    end
    resources :requests do
      member do
        post :applied
        post :join_applicants
        get :joined_requests
      end
    end
  end
  # ./管理后台

  resources :requests do
    resources :conversations
  end

  resources :users do
    resources :requests
  end

  resources :designers


  resources :requests do
    member do
      post :join_applicants
    end
  end

  #达人后台
  namespace :designer do
    resources :user
    resources :works do
      member do
        post :publish
        post :hide
      end
    end
    resources :requests do
      member do
        post :applied
        post :join_applicants
        get :joined_requests
      end
    end
    resources :conversations do
      member do
        post :reply
      end
    end
    resources :user_conversations

    resources :works
  end
  #./达人后台

   #在看作品 搜索作品
  resources :works do
    collection do
      get :search
    end
  end
#/在看作品 搜索作品

  resources :users

  resources :works

  root "welcome#index"

end
