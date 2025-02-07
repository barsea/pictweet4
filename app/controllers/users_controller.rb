class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    # @nickname = current_user.nickname
    # @tweets = current_user.tweets
    @nickname = user.nickname
    @tweets = user.tweets
  end
end
