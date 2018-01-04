class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
  end

  def new
  end

  def create
    @tweet = Tweet.new
    @tweet.title = params[:tweet][:title]
    @tweet.content = params[:tweet][:content]
    @tweet.save
    # データの登録が終了したら、ツイート一覧に遷移させる
    redirect_to '/tweets/index'
  end
end
