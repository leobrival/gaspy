# TABLE PRODUITS
produit = Product.new
produit.name = "Croissants"
produit.description = "Croissant traditionnel au beurre"
produit.pricing = 0.55
produit.quantity = 10
produit.category = "viennoiserie"
file = URI.open("app/assets/images/croissants.jpg")
produit.photo.attach(io: file, filename: "croissants.jpg", content_type: "image/jpg")
produit.save!
# **************
produit2 = Product.new
produit2.name = "Gateaux secs"
produit2.description = "Gateau sec traditionnel au beurre"
produit2.pricing = 0.75
produit2.quantity = 8
produit2.category = "traditionnel"
file = URI.open("app/assets/images/gateau-sec.jpg")
produit2.photo.attach(io: file, filename: "gateau-sec.jpg", content_type: "image/jpg")
produit2.save!
# **************
produit3 = Product.new
produit3.name = "Nattes au beurre"
produit3.description = "Natte au beurre"
produit3.pricing = 1
produit3.quantity = 5
produit3.category = "viennoiserie"
file = URI.open("app/assets/images/nattes.jpg")
produit3.photo.attach(io: file, filename: "nattes.jpg", content_type: "image/jpg")
produit3.save!
# **************
produit4 = Product.new
produit4.name = "Pains au chocolat feuilleté"
produit4.description = "Pain au chocolat feuilleté"
produit4.pricing = 0.80
produit4.quantity = 14
produit4.category = "viennoiserie"
file = URI.open("app/assets/images/pain-chocolat.jpg")
produit4.photo.attach(io: file, filename: "pain-chocolat.jpg", content_type: "image/jpg")
produit4.save!
# **************
produit5 = Product.new
produit5.name = "Pâtés sucrés"
produit5.description = "Patés sucrés"
produit5.pricing = 0.50
produit5.quantity = 9
produit5.category = "traditionnel"
file = URI.open("app/assets/images/pate-sucre-2.jpg")
produit5.photo.attach(io: file, filename: "pate-sucre-2.jpg", content_type: "image/jpg")
produit5.save!
# **************
produit6 = Product.new
produit6.name = "Pomme-cannelle"
produit6.description = "Pomme cannelle au beurre"
produit6.pricing = 1.25
produit6.quantity = 9
produit6.category = "traditionnel"
file = URI.open("app/assets/images/pomme-cannelle.jpg")
produit6.photo.attach(io: file, filename: "pomme-cannelle.jpg", content_type: "image/jpg")
produit6.save!
# **************


# TABLE POINT RELAYS
relay_point = RelayPoint.new
relay_point.name = "Point relay du Campus"
relay_point.description = "Point du Campus se situe à l'Université des Antilles et de la Guane"
relay_point.address = "Campus de Schoelcher-97275 Schoelcher"
relay_point.zip_code = "97275"
relay_point.city = "Schoelcher"
relay_point.country = "Martinique"
relay_point.phone = "05 96 72 73 18"
relay_point.email = "gaspy.campus@gaspy.com"
relay_point.save!
# **************
relay_point2 = RelayPoint.new
relay_point2.name = "Lakoudigital"
relay_point2.description = "Point du Campus se situe à l'Université des Antilles et de la Guane"
relay_point2.address = "1er étage, Terminal Inter-Îles-Bassin de radoub-Gare maritime du Grand Port de la Martinique-Fort-de-France 97200-Martinique"
relay_point2.zip_code = "97200"
relay_point2.city = "nFort-de-France"
relay_point2.country = "Martinique"
relay_point2.phone = "06 98 22 97 93"
relay_point2.email = "belbonjou@lakoudigital.com"
relay_point2.save!

# TABLE USERS
user = User.new
user.first_name = "Léo"
user.last_name = "Matrix"
user.civility = "Mr"
user.email = "leo.matrix@gmail.com"
user.address = "10 route de Balata-97200 Fort de France-Martinique"
user.zip_code = "97200"
user.city = "Fort de France"
user.country = "MArtinique"
user.phone = "06 98 22 97 93"
user.password = "leo123"

user.save!
# ******************
user2 = User.new
user2.first_name = "Axel"
user2.last_name = "Foley"
user2.civility = "Mr"
user2.email = "axel.foley@gmail.com"
user2.address = "5 rue Petit Florentin\n97233 Schoelcher\nMartinique"
user2.zip_code = "97200"
user2.city = "Fort de France"
user2.country = "Martinique"
user2.phone = "06 96 22 97 93"
user2.password = "axel123"
user2.save!
# ******************
user3 = User.new
user3.first_name = "Dimitri"
user3.last_name = "speedman"
user3.civility = "Mr"
user3.email = "dimitri.speedman@gmail.com"
user3.address = "20 rue du Stade Petit Bourg\n97215 Rivière Salée\nMartinique"
user3.zip_code = "97215"
user3.city = "Rivière Salée"
user3.country = "Martinique"
user3.phone = "06 96 45 09 10"
user3.password = "dimitri123"
user3.save!

# TABLE BASKET
basket = Basket.new
basket.relay_point_id = 1
basket.user_id = 1
basket.basket_status = "true"
basket.save!

# TABLE BASKET ITEMS
basket_item = BasketItem.new
basket_item.product_id = 1
basket_item.basket_id = 1
basket_item.quantity = 2
basket_item.save!

