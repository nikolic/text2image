class Text2ImagesController < ApplicationController
  # GET /text2_images
  # GET /text2_images.json
  def index
    @text2_images = Text2Image.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text2_images }
    end
  end

  # GET /text2_images/1
  # GET /text2_images/1.json
  def show
    @text2_image = Text2Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text2_image }
    end
  end

  # GET /text2_images/new
  # GET /text2_images/new.json
  def new
    @text2_image = Text2Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text2_image }
    end
  end

  # GET /text2_images/1/edit
  def edit
    @text2_image = Text2Image.find(params[:id])
  end

  # POST /text2_images
  # POST /text2_images.json
  def create
    @text2_image = Text2Image.new(params[:text2_image])
    
    @text2_image.create_image(params[:text2_image][:text])

    respond_to do |format|
      if @text2_image.save

        format.html { redirect_to @text2_image, notice: 'Text2 image was successfully created.' }
        format.json { render json: @text2_image, status: :created, location: @text2_image }
      else
        format.html { render action: "new" }
        format.json { render json: @text2_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text2_images/1
  # PUT /text2_images/1.json
  def update
    @text2_image = Text2Image.find(params[:id])

    respond_to do |format|
      if @text2_image.update_attributes(params[:text2_image])
        format.html { redirect_to @text2_image, notice: 'Text2 image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text2_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text2_images/1
  # DELETE /text2_images/1.json
  def destroy
    @text2_image = Text2Image.find(params[:id])
    @text2_image.destroy

    respond_to do |format|
      format.html { redirect_to text2_images_url }
      format.json { head :no_content }
    end
  end
end
