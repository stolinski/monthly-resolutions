class ResolvesController < ApplicationController
  # GET /resolves
  # GET /resolves.json
  def index
    @resolves = Resolve.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @resolves }
    end
  end

  # GET /resolves/1
  # GET /resolves/1.json
  def show
    @resolve = Resolve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @resolve }
    end
  end

  # GET /resolves/new
  # GET /resolves/new.json
  def new
    @resolve = Resolve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @resolve }
    end
  end

  # GET /resolves/1/edit
  def edit
    @resolve = Resolve.find(params[:id])
  end

  # POST /resolves
  # POST /resolves.json
  def create
    @resolve = Resolve.new(params[:resolve])

    respond_to do |format|
      if @resolve.save
        format.html { redirect_to @resolve, :notice => 'Resolve was successfully created.' }
        format.json { render :json => @resolve, :status => :created, :location => @resolve }
      else
        format.html { render :action => "new" }
        format.json { render :json => @resolve.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resolves/1
  # PUT /resolves/1.json
  def update
    @resolve = Resolve.find(params[:id])

    respond_to do |format|
      if @resolve.update_attributes(params[:resolve])
        format.html { redirect_to @resolve, :notice => 'Resolve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @resolve.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resolves/1
  # DELETE /resolves/1.json
  def destroy
    @resolve = Resolve.find(params[:id])
    @resolve.destroy

    respond_to do |format|
      format.html { redirect_to resolves_url }
      format.json { head :no_content }
    end
  end
end
