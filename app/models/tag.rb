class Tag < ApplicationRecord
    has_many :picture_tags
    has_many :pictures, through: :picture_tags


    def self.most_popular                                                  
        array = []
            Picture.all.each do |picture|
                id = picture.tags.ids
                    array << id
                        array.flatten!
                end
        hash= {}
            array.collect do |num|
                x= array.count(num)
                    hash[num] = x
                end
        arr = []
            new_hash = hash.sort_by {|k,v| v}.reverse.to_h
                new_hash.keys.each do |key|
                    Tag.all.each do |tag|
                        if tag.id == key
                            arr << tag.name
                        end
                    end
                end
        return arr[0..2]
        end

        def self.show_most_popular_pictures
            arr = []
            Tag.most_popular.each do |tag|
                Tag.all.each do |t|
                    if t.name == tag 
                     arr  << t.pictures 
                    end 
                 end 
           end 
           arr.flatten!
           arr.each do |pic|
            @url = pic.image_url
           end
           #iterate through array then grab attribute


        end


end

# hash = {}
                                                            
                                                            
  # Picture.all.each do |picture|
  #     id = picture.tags.ids
   #     id.collect do |num|
  #         hash[num] += 1
  #     end
                                                            
 #     end

           
  #   array.sort_by {|tag|
    #     sorter << tag.pictures.count
    #   }
 #   return sorter[0..5]
