class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.firstname = params[:firstname]
    @user.middlename = params[:middlename]
    @user.lastname = params[:lastname]
    @user.password = params[:password]
    @user.dob = params[:dob]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.nationality = params[:nationality]

    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.username = params[:username]
    @user.firstname = params[:firstname]
    @user.middlename = params[:middlename]
    @user.lastname = params[:lastname]
    @user.password = params[:password]
    @user.dob = params[:dob]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.nationality = params[:nationality]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end
end
