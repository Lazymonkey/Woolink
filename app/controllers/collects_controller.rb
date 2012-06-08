
class CollectsController < ApplicationController
  # GET /collects
  # GET /collects.json
  def index
    @collects = Collect.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @collects }
    end
  end

  # GET /collects/1
  # GET /collects/1.json
  def show
    @collect = Collect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @collect }
    end
  end

  # GET /collects/new
  # GET /collects/new.json
  def new
    @collect = Collect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @collect }
    end
  end

  # GET /collects/1/edit
  def edit
    @collect = Collect.find(params[:id])
  end

  # POST /collects
  # POST /collects.json
  def create
    @collect = Collect.new(params[:collect])

    respond_to do |format|
      if @collect.save
        format.html { redirect_to @collect, notice: 'Collect was successfully created.' }
        format.json { render json: @collect, status: :created, location: @collect }
      else
        format.html { render action: "new" }
        format.json { render json: @collect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /collects/1
  # PUT /collects/1.json
  def update
    @collect = Collect.find(params[:id])

    respond_to do |format|
      if @collect.update_attributes(params[:collect])
        format.html { redirect_to @collect, notice: 'Collect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @collect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collects/1
  # DELETE /collects/1.json
  def destroy
    @collect = Collect.find(params[:id])
    @collect.destroy

    respond_to do |format|
      format.html { redirect_to collects_url }
      format.json { head :no_content }
    end
  end
end
