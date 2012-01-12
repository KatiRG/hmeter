class UsertablesController < ApplicationController
  # GET /usertables
  # GET /usertables.json
  def index
   # @user = User.find_by_id(session[:remember_token])  
   # @user = User.find_by_id(cookies[:remember_token])

   # @user = User.find(session[:user_id])
   # @usertables = Usertable.find_all_by_user_id(@user.id)

   @user = current_user
   @usertables = Usertable.find_all_by_user_id(@user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usertables }
      
    end
  end

  # GET /usertables/1
  # GET /usertables/1.json
  def show
    @usertable = Usertable.find(params[:id])
   # @user = User.find(session[:user_id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usertable }
    end
  end

  # GET /usertables/new
  # GET /usertables/new.json
  def new
    @usertable = Usertable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usertable }
    end
  end

  # GET /usertables/1/edit
  def edit
    @usertable = Usertable.find(params[:id])
  end

  # POST /usertables
  # POST /usertables.json
  def create
    # @user = User.find(session[:user_id])
    # @usertable = Usertable.new(params[:usertable])
    # @usertable.user = @user

    @user = current_user
    @usertable = Usertable.new(params[:usertable])
    @usertable.user = @user

    respond_to do |format|
      if @usertable.save
        format.html { redirect_to @usertable, notice: 'Your mood was successfully saved.' }
        format.json { render json: @usertable, status: :created, location: @usertable }
      else
        format.html { render action: "new" }
        format.json { render json: @usertable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usertables/1
  # PUT /usertables/1.json
  def update
    @usertable = Usertable.find(params[:id])

    respond_to do |format|
      if @usertable.update_attributes(params[:usertable])
        format.html { redirect_to @usertable, notice: 'Your mood was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @usertable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usertables/1
  # DELETE /usertables/1.json
  def destroy
    @usertable = Usertable.find(params[:id])
    @usertable.destroy

    respond_to do |format|
      format.html { redirect_to usertables_url }
      format.json { head :ok }
    end
  end

  
end
