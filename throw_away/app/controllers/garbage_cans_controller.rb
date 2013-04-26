class GarbageCansController < ApplicationController
  # GET /garbage_cans
  # GET /garbage_cans.json
  def index
    @garbage_cans = GarbageCan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @garbage_cans }
    end
  end

  # GET /garbage_cans/1
  # GET /garbage_cans/1.json
  def show
    @garbage_can = GarbageCan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @garbage_can }
    end
  end

  # GET /garbage_cans/new
  # GET /garbage_cans/new.json
  def new
    @garbage_can = GarbageCan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @garbage_can }
    end
  end

  # GET /garbage_cans/1/edit
  def edit
    @garbage_can = GarbageCan.find(params[:id])
  end

  # POST /garbage_cans
  # POST /garbage_cans.json
  def create
    @garbage_can = GarbageCan.new(params[:garbage_can])

    respond_to do |format|
      if @garbage_can.save
        format.html { redirect_to @garbage_can, notice: 'Garbage can was successfully created.' }
        format.json { render json: @garbage_can, status: :created, location: @garbage_can }
      else
        format.html { render action: "new" }
        format.json { render json: @garbage_can.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /garbage_cans/1
  # PUT /garbage_cans/1.json
  def update
    @garbage_can = GarbageCan.find(params[:id])

    respond_to do |format|
      if @garbage_can.update_attributes(params[:garbage_can])
        format.html { redirect_to @garbage_can, notice: 'Garbage can was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @garbage_can.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garbage_cans/1
  # DELETE /garbage_cans/1.json
  def destroy
    @garbage_can = GarbageCan.find(params[:id])
    @garbage_can.destroy

    respond_to do |format|
      format.html { redirect_to garbage_cans_url }
      format.json { head :no_content }
    end
  end
end
