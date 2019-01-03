# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = "http://www.defenders.org/sites/default/files/styles/large/public/dolphin-kristian-sekulic-isp.jpg"

User.create(email: "goutiemma@gmail.com", username: "ngouti" , password: "password")
User.create(email: "nguyenclaire@gmail.com", username: "cnguyen" , password: "password")
User.create(email: "bellamyjakob@gmail.com", username: "jbellamy" , password: "password")

Picture.create(image_url: url, title: "picture1", user_id: 1)
Picture.create(image_url: url, title: "picture2", user_id: 2)
Picture.create(image_url: url, title: "picture3", user_id: 3)
Picture.create(image_url: url, title: "picture4", user_id: 2)
Picture.create(image_url: url, title: "picture5", user_id: 1)

Tag.create(name: "vacation")
Tag.create(name: "happy")
Tag.create(name: "cute")
Tag.create(name: "cool")

Comment.create(content: "This is an awesome picture!", picture_id: 1, user_id: 1)
Comment.create(content: "This is a cool picture!", picture_id: 2, user_id: 2)
Comment.create(content: "It's a dolphin!", picture_id: 2, user_id: 3)
Comment.create(content: "This is an awesome picture!", picture_id: 3, user_id: 2)
Comment.create(content: "This is an awesome picture!", picture_id: 5, user_id: 1)

PictureTag.create(picture_id: 2, tag_id: 3)
PictureTag.create(picture_id: 4, tag_id: 2)
PictureTag.create(picture_id: 3, tag_id: 3)
PictureTag.create(picture_id: 1, tag_id: 4)
PictureTag.create(picture_id: 5, tag_id: 3)
PictureTag.create(picture_id: 5, tag_id: 2)
PictureTag.create(picture_id: 5, tag_id: 1)
PictureTag.create(picture_id: 1, tag_id: 3)




