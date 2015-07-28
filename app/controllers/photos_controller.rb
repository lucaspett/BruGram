class PhotosController < ApplicationController
  before_action :require_permission, only: [:edit, :update, :destroy]

  def index
    @photos = Photo.all
  end
  
  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end
 
  def create
    @photo = current_user.photos.build(photo_params)

    if @photo.save
      redirect_to @photo
    else
      render 'new'
    end
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to @photo
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to photos_path
  end
 
  private

  def require_permission
    if current_user != Photo.find(params[:id]).user
      redirect_to photos_path
    end
  end

  def photo_params
    params.require(:photo).permit(:public, :caption, :image, :user_id)
  end
end
