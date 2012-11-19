class Mp3sController < ApplicationController
  # GET /mp3s
  # GET /mp3s.json
  def index
    @mp3s = Mp3.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mp3s }
    end
  end

  # GET /mp3s/1
  # GET /mp3s/1.json
  def show
    @mp3 = Mp3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mp3 }
    end
  end

  # GET /mp3s/new
  # GET /mp3s/new.json
  def new
    @mp3 = Mp3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mp3 }
    end
  end

  # GET /mp3s/1/edit
  def edit
    @mp3 = Mp3.find(params[:id])
  end

  # POST /mp3s
  # POST /mp3s.json
  def create
    @mp3 = Mp3.new(params[:mp3])

    respond_to do |format|
      if @mp3.save
        format.html { redirect_to @mp3, notice: 'Mp3 was successfully created.' }
        format.json { render json: @mp3, status: :created, location: @mp3 }
      else
        format.html { render action: "new" }
        format.json { render json: @mp3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mp3s/1
  # PUT /mp3s/1.json
  def update
    @mp3 = Mp3.find(params[:id])

    respond_to do |format|
      if @mp3.update_attributes(params[:mp3])
        format.html { redirect_to @mp3, notice: 'Mp3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mp3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mp3s/1
  # DELETE /mp3s/1.json
  def destroy
    @mp3 = Mp3.find(params[:id])
    @mp3.destroy

    respond_to do |format|
      format.html { redirect_to mp3s_url }
      format.json { head :no_content }
    end
  end
end
