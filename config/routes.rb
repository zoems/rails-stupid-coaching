Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  get "/ask", to: "questions#ask"

  # Defines the root path route ("/")
  # root "posts#index"
  root "questions#ask"
  get '/answer' => "questions#answer"

  # TODO 1: Write the route (get page name to controller name # controller action)
  # TODO 2: Generate the controller OR you write the action/method in the already existing controller
  # TODO 3: Create HTML Page
end
