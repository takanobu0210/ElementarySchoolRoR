class UsersController < ApplicationController
  def index
  end

  # ルーティング(routes.rb)にget "users/show/:username" => "users#show"を設定したため、
  # http://0.0.0.0:3000/users/show/ryooopanにアクセスすると、
  # params[:username] = 'ryoooopan'が代入される
  def show
    @user = User.find_by(:username => params[:username])
  end
end
