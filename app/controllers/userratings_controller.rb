class UserratingsController < ApplicationController
  # GET /userratings
  # GET /userratings.json
  def index
    @userratings = Userrating.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userratings }
    end
  end

  # GET /userratings/1
  # GET /userratings/1.json
  def show
    @userrating = Userrating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userrating }
    end
  end

  # GET /userratings/new
  # GET /userratings/new.json
  def new
    @userrating = Userrating.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userrating }
    end
  end

  # GET /userratings/1/edit
  def edit
    @userrating = Userrating.find(params[:id])
  end

  # POST /userratings
  # POST /userratings.json
  def create

    logger.info("******Creatign a new rating object****************************")
    @userrating = Userrating.new(params[:userrating])

    respond_to do |format|
      if @userrating.save
        format.html { redirect_to @userrating, notice: 'Userrating was successfully created.' }
        format.json { render json: @userrating, status: :created, location: @userrating }
      else
        format.html { render action: "new" }
        format.json { render json: @userrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userratings/1
  # PUT /userratings/1.json
  def update
    @userrating = Userrating.find(params[:id])

    respond_to do |format|
      if @userrating.update_attributes(params[:userrating])
        format.html { redirect_to @userrating, notice: 'Userrating was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userratings/1
  # DELETE /userratings/1.json
  def destroy
    @userrating = Userrating.find(params[:id])
    @userrating.destroy

    respond_to do |format|
      format.html { redirect_to userratings_url }
      format.json { head :no_content }
    end
  end
end
