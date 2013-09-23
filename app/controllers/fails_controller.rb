class FailsController < ApplicationController
  # GET /fails
  # GET /fails.json
  def index
    @fails = Fail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fails }
    end
  end

  # GET /fails/1
  # GET /fails/1.json
  def show
    @fail = Fail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fail }
    end
  end

  # GET /fails/new
  # GET /fails/new.json
  def new
    @fail = Fail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fail }
    end
  end

  # GET /fails/1/edit
  def edit
    @fail = Fail.find(params[:id])
  end

  # POST /fails
  # POST /fails.json
  def create
    @fail = Fail.new(params[:fail])

    respond_to do |format|
      if @fail.save
        format.html { redirect_to @fail, notice: 'Fail was successfully created.' }
        format.json { render json: @fail, status: :created, location: @fail }
      else
        format.html { render action: "new" }
        format.json { render json: @fail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fails/1
  # PUT /fails/1.json
  def update
    @fail = Fail.find(params[:id])

    respond_to do |format|
      if @fail.update_attributes(params[:fail])
        format.html { redirect_to @fail, notice: 'Fail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fails/1
  # DELETE /fails/1.json
  def destroy
    @fail = Fail.find(params[:id])
    @fail.destroy

    respond_to do |format|
      format.html { redirect_to fails_url }
      format.json { head :no_content }
    end
  end
end