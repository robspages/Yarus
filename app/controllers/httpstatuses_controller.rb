class HttpstatusesController < ApplicationController
  # GET /httpstatuses
  # GET /httpstatuses.json
  def index
    @httpstatuses = Httpstatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @httpstatuses }
    end
  end

  # GET /httpstatuses/1
  # GET /httpstatuses/1.json
  def show
    @httpstatus = Httpstatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @httpstatus }
    end
  end

  # GET /httpstatuses/new
  # GET /httpstatuses/new.json
  def new
    @httpstatus = Httpstatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @httpstatus }
    end
  end

  # GET /httpstatuses/1/edit
  def edit
    @httpstatus = Httpstatus.find(params[:id])
  end

  # POST /httpstatuses
  # POST /httpstatuses.json
  def create
    @httpstatus = Httpstatus.new(params[:httpstatus])

    respond_to do |format|
      if @httpstatus.save
        format.html { redirect_to @httpstatus, notice: 'Httpstatus was successfully created.' }
        format.json { render json: @httpstatus, status: :created, location: @httpstatus }
      else
        format.html { render action: "new" }
        format.json { render json: @httpstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /httpstatuses/1
  # PUT /httpstatuses/1.json
  def update
    @httpstatus = Httpstatus.find(params[:id])

    respond_to do |format|
      if @httpstatus.update_attributes(params[:httpstatus])
        format.html { redirect_to @httpstatus, notice: 'Httpstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @httpstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /httpstatuses/1
  # DELETE /httpstatuses/1.json
  def destroy
    @httpstatus = Httpstatus.find(params[:id])
    @httpstatus.destroy

    respond_to do |format|
      format.html { redirect_to httpstatuses_url }
      format.json { head :no_content }
    end
  end
end
