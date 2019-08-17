
user1 = User.create(name: "George", username: "george17", password: "password")
user2 = User.create(name: "Gwenivere", username: "GwenStacy76", password: "password")
user3 = User.create(name: "Tom", username: "TommyLoco", password: "password")
cookie1 = Cookie.create(name: "Mount Rushs'mores", cookie_type: "S'mores", user_id: user1.id)
cookie3 = Cookie.create(name: "G-Snickers", cookie_type: "Snickerdoodle", user_id: user2.id)
cookie2 = Cookie.create(name: "Tommy Chunks", cookie_type: "Chocolate Chip", user_id: user3.id)