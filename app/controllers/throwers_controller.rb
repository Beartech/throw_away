class ThrowersController < ApplicationController
  # GET /throwers
  # GET /throwers.json
  def index
    @throwers = Thrower.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @throwers }
    end
  end

  # GET /throwers/1
  # GET /throwers/1.json
  def show
    @thrower = Thrower.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thrower }
    end
  end

  # GET /throwers/new
  # GET /throwers/new.json
  def new
    @thrower = Thrower.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thrower }
    end
  end

  # GET /throwers/1/edit
  def edit
    @thrower = Thrower.find(params[:id])
  end

  # POST /throwers
  # POST /throwers.json
  def create
    @thrower = Thrower.new(params[:thrower])

    respond_to do |format|
      if @thrower.save
        format.html { redirect_to @thrower, notice: 'Thrower was successfully created.' }
        format.json { render json: @thrower, status: :created, location: @thrower }
      else
        format.html { render action: "new" }
        format.json { render json: @thrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /throwers/1
  # PUT /throwers/1.json
  def update
    @thrower = Thrower.find(params[:id])

    respond_to do |format|
      if @thrower.update_attributes(params[:thrower])
        format.html { redirect_to @thrower, notice: 'Thrower was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /throwers/1
  # DELETE /throwers/1.json
  def destroy
    @thrower = Thrower.find(params[:id])
    @thrower.destroy

    respond_to do |format|
      format.html { redirect_to throwers_url }
      format.json { head :no_content }
    end
  end

  def report
    @throwers = Thrower.all
  end
end
