class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
  end
  
  def create
    User.create( params.require( :user ).permit( :username, :password, :pin, :question1, :question2, :email))
    redirect_to "/users"
  end
  
  def destroy
     User.find( params[ :id ] ).destroy
     redirect_to "/users"
  end
  
  def edit
    @user = User.find( params[ :id ] )
  end

  def update
    @user = User.find( params[ :id ] )
    @user.update_attributes( params.require( :user ).permit( :username, :password, :pin, :question1, :question2, :email))
    redirect_to "/users/#{@user.id}"
  end
  
  def find
      @users = User.where( "Username = ? OR Email = ?", params[ :search_string ], params[ :search_string] )

  end
  
  
end
