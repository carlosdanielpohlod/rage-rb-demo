Rage.routes.draw do
  get "/" => "application#health"
  get "/posts" => "posts#index"
end
