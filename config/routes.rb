Stacksocial::Application.routes.draw do

  match "/auth/:provider/callback" => 'sessions#create'

  match "/auth/failure" => "sessions#failure" 

  match "/logout" => "sessions#destroy", :as => :logout

  match "/login" => "sessions#new", :as => :login 

  root :to => 'home#index'

end
