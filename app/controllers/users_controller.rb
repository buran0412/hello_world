class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
    if @user.save
            redirect_to '/'
    else
        render :new
    end
  end