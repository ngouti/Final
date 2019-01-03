class PicturesController < ApplicationController
    def index
        
    end

    def create
        @picture = Picture.create(picture_params)
    end

    private

    def picture_params
        params.require(:picture).permit(:image_url, :title, :user_id)
    end
end
