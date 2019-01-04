# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url1 = "https://static1.squarespace.com/static/57d18991f5e2317b428b45ae/57d3186a5016e199d1cf179a/57f7ee1dc534a5767e921d57/1511150839005/MJW150130-13121466_DogTalesDOG_CO.jpg?format=750w"
url2 = "https://static.boredpanda.com/blog/wp-content/uploads/2015/06/expressive-dog-portraits-elke-vogelsang-8.jpg"
url3 = "https://img.huffingtonpost.com/asset/567847051600000001eb95c2.jpeg?ops=scalefit_720_noupscale"
url4 = "http://earthporm.com/wp-content/uploads/2015/06/expressive-dog-portraits-elke-vogelsang-3.jpg"
url5 = "http://api.ning.com/files/b*u3sBO-oVVHhmuJ4bfZo1QF1ikJdhX6n8Wfwf*6dSnudnnJ-pXgWkvFCJn-YUDKzXYBLg6eSo8lybrzSlN5pqBUTDJv-F-L/elkevogelsang5.jpg"


User.create(email: "goutiemma@gmail.com", username: "ngouti" , password: "password")
User.create(email: "nguyenclaire@gmail.com", username: "cnguyen" , password: "password")
User.create(email: "bellamyjakob@gmail.com", username: "jbellamy" , password: "password")

Picture.create(image_url: url1, title: "picture1", user_id: 1)
Picture.create(image_url: url2, title: "picture2", user_id: 2)
Picture.create(image_url: url3, title: "picture3", user_id: 3)
Picture.create(image_url: url4, title: "picture4", user_id: 2)
Picture.create(image_url: url5, title: "picture5", user_id: 1)

Tag.create(name: "vacation")
Tag.create(name: "happy")
Tag.create(name: "cute")
Tag.create(name: "cool")

Comment.create(content: "This is an awesome picture!", picture_id: 1, user_id: 1)
Comment.create(content: "This is a cool picture!", picture_id: 2, user_id: 2)
Comment.create(content: "It's a dolphin!", picture_id: 2, user_id: 3)
Comment.create(content: "This is an awesome picture!", picture_id: 3, user_id: 2)
Comment.create(content: "This is an awesome picture!", picture_id: 5, user_id: 1)

PictureTag.create(picture_id: 2, tag_id: 2)
PictureTag.create(picture_id: 4, tag_id: 2)
PictureTag.create(picture_id: 3, tag_id: 2)
PictureTag.create(picture_id: 1, tag_id: 4)
PictureTag.create(picture_id: 5, tag_id: 3)
PictureTag.create(picture_id: 5, tag_id: 2)
PictureTag.create(picture_id: 5, tag_id: 1)
PictureTag.create(picture_id: 1, tag_id: 3)




