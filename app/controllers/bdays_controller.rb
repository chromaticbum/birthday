class BdaysController < ApplicationController
  # GET /bdays
  # GET /bdays.xml
  def index
    @bdays = Bday.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bdays }
    end
  end

  # GET /bdays/1
  # GET /bdays/1.xml
  def show
    @bday = Bday.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bday }
    end
  end

  # GET /bdays/new
  # GET /bdays/new.xml
  def new
    @bday = Bday.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bday }
    end
  end

  # GET /bdays/1/edit
  def edit
    @bday = Bday.find(params[:id])
  end

  # POST /bdays
  # POST /bdays.xml
  def create
    @bday = Bday.new(params[:bday])

    respond_to do |format|
      if @bday.save
        format.html { redirect_to(@bday, :notice => 'Bday was successfully created.') }
        format.xml  { render :xml => @bday, :status => :created, :location => @bday }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bday.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bdays/1
  # PUT /bdays/1.xml
  def update
    @bday = Bday.find(params[:id])

    respond_to do |format|
      if @bday.update_attributes(params[:bday])
        format.html { redirect_to(@bday, :notice => 'Bday was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bday.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bdays/1
  # DELETE /bdays/1.xml
  def destroy
    @bday = Bday.find(params[:id])
    @bday.destroy

    respond_to do |format|
      format.html { redirect_to(bdays_url) }
      format.xml  { head :ok }
    end
  end
end
