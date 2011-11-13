class TagsController < ApplicationController
  
  def index
    @tags = ActsAsTaggableOn::Tag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags }
    end
  end

  def show
    @tag = ActsAsTaggableOn::Tag.find(params[:id])
    @chunks = Chunk.includes(:document).tagged_with(@tag.name)
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag }
    end
  end

  def new
    @tag = ActsAsTaggableOn::Tag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag }
    end
  end

  def edit
    @tag = ActsAsTaggableOn::Tag.find(params[:id])
  end

  def create
    @tag = ActsAsTaggableOn::Tag.new(params[:tag])

    respond_to do |format|
      if @ActsAsTaggableOn::Tag.save
        format.html { redirect_to @tag, notice: 'Tag was successfully created.' }
        format.json { render json: @tag, status: :created, location: @tag }
      else
        format.html { render action: "new" }
        format.json { render json: @ActsAsTaggableOn::Tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tag = ActsAsTaggableOn::Tag.find(params[:id])

    respond_to do |format|
      if @ActsAsTaggableOn::Tag.update_attributes(params[:tag])
        format.html { redirect_to @tag, notice: 'Tag was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ActsAsTaggableOn::Tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tag = ActsAsTaggableOn::Tag.find(params[:id])
    @ActsAsTaggableOn::Tag.destroy

    respond_to do |format|
      format.html { redirect_to tags_url }
      format.json { head :ok }
    end
  end
end
