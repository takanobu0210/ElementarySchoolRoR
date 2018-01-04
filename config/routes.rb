Rails.application.routes.draw do

  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  # ツイートのフォームを入力して、送信ボタンを押したら
  # tweetsコントローラーのcreateにいきなさいと支持していることになります。
  post "tweets" => "tweets#create"

  get 'users/index'
  # ユーザごとに表示するページを変更したいため、:usernameとしている。
  # =>とすることにより、usersコントローラのshowにいってね、という命令になる
  # get 'users/show'
  get 'users/show/:username' => 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
