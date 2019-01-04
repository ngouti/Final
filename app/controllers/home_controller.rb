class HomeController < ApplicationController

def show
@pictures= Picture.all
arr = []
            Tag.most_popular.each do |tag|
                Tag.all.each do |t|
                    if t.name == tag 
                     arr  << t.pictures 
                    end 
                 end 
           end 
           arr.flatten!
        #    arr.collect do |pic|
        #     @url = pic.image_url
        #    end
        @array = []
        arr.collect do |pic|
            @array << pic.image_url
        end

end


end