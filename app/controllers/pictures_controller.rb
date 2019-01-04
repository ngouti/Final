class PicturesController < ApplicationController
    def index
        @pictures = Picture.all
    end

    def new
        @picture = Picture.new
    end

    def create
        @picture = Picture.create(picture_params)
    end

    def show
        @picture = Picture.find(params[:id])
    end

    private

    def picture_params
        params.require(:picture).permit(:image_url, :title, :user_id)
    end
end
