class PictureTagsController < ApplicationController
    def create
        @picture_tag = PictureTag.create(picture_tag_params)
    end

    private

    def picture_tag_params
        params.require(:picture_tag).permit(:picture_id, :tag_id)
    end
end
