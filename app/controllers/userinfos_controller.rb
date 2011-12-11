class UserinfosController < ApplicationController
  # GET /userinfos
  # GET /userinfos.json
  def index
    @userinfos = Userinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userinfos }
    end
  end

  # GET /userinfos/1
  # GET /userinfos/1.json
  def show
    @userinfo = Userinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userinfo }
    end
  end

  # GET /userinfos/new
  # GET /userinfos/new.json
  def new
    @userinfo = Userinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userinfo }
    end
  end

  # GET /userinfos/1/edit
  def edit
    @userinfo = Userinfo.find(params[:id])
  end

  # POST /userinfos
  # POST /userinfos.json
  def create
    @userinfo = Userinfo.new(params[:userinfo])

    respond_to do |format|
      if @userinfo.save
        format.html { redirect_to @userinfo, notice: 'Userinfo was successfully created.' }
        format.json { render json: @userinfo, status: :created, location: @userinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @userinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userinfos/1
  # PUT /userinfos/1.json
  def update
    @userinfo = Userinfo.find(params[:id])

    respond_to do |format|
      if @userinfo.update_attributes(params[:userinfo])
        format.html { redirect_to @userinfo, notice: 'Userinfo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @userinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userinfos/1
  # DELETE /userinfos/1.json
  def destroy
    @userinfo = Userinfo.find(params[:id])
    @userinfo.destroy

    respond_to do |format|
      format.html { redirect_to userinfos_url }
      format.json { head :ok }
    end
  end
end
