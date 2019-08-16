user = User.find_by(username: "tommy")
user2 = User.create(name: "George", username: "george17", password: "wordpass")
cookie = Cookie.new
cookie.name = "Tommy Chunks"
cookie.cookie_type = "Chocolate Chip"
cookie.user_id = user.id
