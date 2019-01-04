class TagsController < ApplicationController
    def index
        @tags = Tag.all 
    end
    
    def create
        @tag = Tag.create(tag_params)
    end

    private

    def tag_params
        params.require(:tag).permit(:name)
    end
end
