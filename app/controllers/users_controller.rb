class UsersController < ApplicationController
  
  # GET /users
  # GET /users.json
  def index
    
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @title = "Sign up"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end

  end

   def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
      session[:user_id] = @user.id
      redirect_to usertables_path
    else
      @title = "Sign up"
      render 'new'
    end
  end

   def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Your mood was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


end
