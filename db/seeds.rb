def safe_asset_path(img_name)
  if Rails.env.production?
    "public/seeds/#{img_name}"
  else
    "app/assets/images/#{img_name}"
  end
end

unless Rails.env.production?
  puts "Erasing database"
  BasketItem.destroy_all
  Product.destroy_all
  Basket.destroy_all
  RelayPoint.destroy_all
  User.destroy_all
  puts "Database erased"
end

# TABLE PRODUITS
produit = Product.new
produit.name = "Croissants"
produit.description = "Croissant traditionnel au beurre"
produit.pricing = 0.55
produit.quantity = 10
produit.category = "Viennoiserie"
file = File.open(safe_asset_path("croissants.jpg"))
produit.photo.attach(io: file, filename: "croissants.jpg", content_type: "image/jpg")
produit.save_if_able
# **************
produit2 = Product.new
produit2.name = "Gateaux secs"
produit2.description = "Gateau sec traditionnel au beurre"
produit2.pricing = 0.75
produit2.quantity = 8
produit2.category = "Pâtisserie"
file = File.open(safe_asset_path("gateau-sec.jpg"))
produit2.photo.attach(io: file, filename: "gateau-sec.jpg", content_type: "image/jpg")
produit2.save_if_able
# **************
produit3 = Product.new
produit3.name = "Nattes au beurre"
produit3.description = "Natte au beurre"
produit3.pricing = 1
produit3.quantity = 5
produit3.category = "Pâtisserie"
file = File.open(safe_asset_path("nattes.jpg"))
produit3.photo.attach(io: file, filename: "nattes.jpg", content_type: "image/jpg")
produit3.save_if_able
# **************
produit4 = Product.new
produit4.name = "Pains au chocolat feuilleté"
produit4.description = "Pain au chocolat feuilleté"
produit4.pricing = 0.80
produit4.quantity = 14
produit4.category = "Viennoiserie"
file = File.open(safe_asset_path("pain-chocolat.jpg"))
produit4.photo.attach(io: file, filename: "pain-chocolat.jpg", content_type: "image/jpg")
produit4.save_if_able
# **************
produit5 = Product.new
produit5.name = "Pâtés sucrés"
produit5.description = "Patés sucrés"
produit5.pricing = 0.50
produit5.quantity = 9
produit5.category = "Pâtisserie"
file = File.open(safe_asset_path("pate-sucre-2.jpg"))
produit5.photo.attach(io: file, filename: "pate-sucre-2.jpg", content_type: "image/jpg")
produit5.save_if_able
# **************
produit6 = Product.new
produit6.name = "Pomme-cannelle"
produit6.description = "Pomme cannelle au beurre"
produit6.pricing = 1.25
produit6.quantity = 9
produit6.category = "Pâtisserie"
file = File.open(safe_asset_path("pomme-cannelle.jpg"))
produit6.photo.attach(io: file, filename: "pomme-cannelle.jpg", content_type: "image/jpg")
produit6.save_if_able
# **************
produit7 = Product.new
produit7.name = "Pomme cannelle pépite de chocolat"
produit7.description = "La pomme canelle est une brioche au beurre antillaise moelleuse et gourmande"
produit7.pricing = 1
produit7.quantity = 5
produit7.category = "Pâtisserie"
file = File.open(safe_asset_path("Pomme-canelle-pépites-choco.jpg"))
produit7.photo.attach(io: file, filename: "Pomme-canelle-pépites-choco.jpg", content_type: "image/jpg")
produit7.save_if_able
# **************
produit8 = Product.new
produit8.name = "Biscuit secs"
produit8.description = "Biscuit sec croustillant et moelleux "
produit8.pricing = 0.50
produit8.quantity = 7
produit8.category = "Pâtisserie"
file = File.open(safe_asset_path("Biscuit-sec.jpg"))
produit8.photo.attach(io: file, filename: "Biscuit-sec.jpg", content_type: "image/jpg")
produit8.save_if_able
# **************

produit9 = Product.new
produit9.name = "Pain saucisse"
produit9.description = "Pain moelleux gratiné au fromage et sa saucisse local"
produit9.pricing = 0.80
produit9.quantity = 7
produit9.category = "Pâtisserie"
file = File.open(safe_asset_path("Pain-saucisse.jpg"))
produit9.photo.attach(io: file, filename: "Pain-saucisse.jpg", content_type: "image/jpg")
produit9.save_if_able

# **************

produit10 = Product.new
produit10.name = "Jus de Prune Cythère"
produit10.description = "Jus local de Prune de Cythère"
produit10.pricing = 1.60
produit10.quantity = 4
produit10.category = "Jus local"
file = File.open(safe_asset_path("Prune-Cythère.jpg"))
produit10.photo.attach(io: file, filename: "Prune-Cythère.jpg", content_type: "image/jpg")
produit10.save_if_able
# **************

produit11 = Product.new
produit11.name = "Jus d'Orange Carotte"
produit11.description = "Jus local d'Orange Carotte"
produit11.pricing = 1.20
produit11.quantity = 4
produit11.category = "Jus local"
file = File.open(safe_asset_path("Orange-carotte-Gingembre.jpg"))
produit11.photo.attach(io: file, filename: "Orange-carotte-Gingembre.jpg", content_type: "image/jpg")
produit11.save_if_able
# **************

produit12 = Product.new
produit12.name = "Jus Citron Basilic"
produit12.description = "Jus local de Citron Basilic"
produit12.pricing = 1.40
produit12.quantity = 4
produit12.category = "Jus local"
file = File.open(safe_asset_path("Citron-basilic.jpg"))
produit12.photo.attach(io: file, filename: "Citron-basilic.jpg", content_type: "image/jpg")
produit12.save_if_able
# **************

produit13 = Product.new
produit13.name = "Jus Citron "
produit13.description = "Jus local de Citron"
produit13.pricing = 1.20
produit13.quantity = 3
produit13.category = "Jus local"
file = File.open(safe_asset_path("Citron.jpg"))
produit13.photo.attach(io: file, filename: "Citron.jpg", content_type: "image/jpg")
produit13.save_if_able
# **************

produit14 = Product.new
produit14.name = "Jus de Goyave"
produit14.description = "Jus local de Goyave"
produit14.pricing = 1.50
produit14.quantity = 3
produit14.category = "Jus local"
file = File.open(safe_asset_path("Goyave.jpg"))
produit14.photo.attach(io: file, filename: "Goyave.jpg", content_type: "image/jpg")
produit14.save_if_able
# **************

produit15 = Product.new
produit15.name = "Haricot blanc "
produit15.description = "Haricot blanc local"
produit15.pricing = 1.00
produit15.quantity = 3
produit15.category = "Produit sec "
file = File.open(safe_asset_path("Haricot-blanc.jpg"))
produit15.photo.attach(io: file, filename: "Haricot-blanc.jpg", content_type: "image/jpg")
produit15.save_if_able
# **************

produit16 = Product.new
produit16.name = "Tagliatelle"
produit16.description = "Pâtes alimentaires découpées en longues lamelles plates, minces et assez larges."
produit16.pricing = 0.80
produit16.quantity = 6
produit16.category = "Produit sec"
file = File.open(safe_asset_path("Tagliatelle.jpg"))
produit16.photo.attach(io: file, filename: "Tagliatelle.jpg", content_type: "image/jpg")
produit16.save_if_able
# **************

produit17 = Product.new
produit17.name = "Torti"
produit17.description = "Jus local de citron et gingembre"
produit17.pricing = 2.50
produit17.quantity = 3
produit17.category = "Produit sec"
file = File.open(safe_asset_path("Torti.jpg"))
produit17.photo.attach(io: file, filename: "Torti.jpg", content_type: "image/jpg")
produit17.save_if_able
# **************

produit18 = Product.new
produit18.name = "Pois cassé"
produit18.description = "Pois cassé local"
produit18.pricing = 1.30
produit18.quantity = 5
produit18.category = "Produit sec"
file = File.open(safe_asset_path("Pois-cassé.jpg"))
produit18.photo.attach(io: file, filename: "Pois-cassé.jpg", content_type: "image/jpg")
produit18.save_if_able
# **************

produit19 = Product.new
produit19.name = "Spaghettie"
produit19.description = "sapghettie"
produit19.pricing = 0.70
produit19.quantity = 7
produit19.category = "Produit sec"
file = File.open(safe_asset_path("Spaghettie.jpg"))
produit19.photo.attach(io: file, filename: "Spaghettie.jpg", content_type: "image/jpg")
produit19.save_if_able
# **************

produit20 = Product.new
produit20.name = "Pénné"
produit20.description = "Pénné"
produit20.pricing = 0.80
produit20.quantity = 8
produit20.category = "Produit sec"
file = File.open(safe_asset_path("Pénné.jpg"))
produit20.photo.attach(io: file, filename: "Pénné.jpg", content_type: "image/jpg")
produit20.save_if_able
# **************

produit21 = Product.new
produit21.name = "Lentille verte"
produit21.description = "Lentille verte"
produit21.pricing = 0.50
produit21.quantity = 10
produit21.category = "produit sec"
file = File.open(safe_asset_path("Lentille.jpg"))
produit21.photo.attach(io: file, filename: "Lentille.jpg", content_type: "image/jpg")
produit21.save_if_able
# **************

produit22 = Product.new
produit22.name = "Macaronie"
produit22.description = "Macaronie"
produit22.pricing = 0.60
produit22.quantity = 8
produit22.category = "produit sec"
file = File.open(safe_asset_path("Macaronie.jpg"))
produit22.photo.attach(io: file, filename: "Macaronie.jpg", content_type: "image/jpg")
produit22.save_if_able
# **************

produit23 = Product.new
produit23.name = "Coquillette"
produit23.description = "Coquillette"
produit23.pricing = 0.70
produit23.quantity = 9
produit23.category = "produit sec"
file = File.open(safe_asset_path("Coquillette.jpg"))
produit23.photo.attach(io: file, filename: "Coquillette.jpg", content_type: "image/jpg")
produit23.save_if_able
# **************

produit24 = Product.new
produit24.name = "Haricot rouge"
produit24.description = "Haricot rouge"
produit24.pricing = 0.40
produit24.quantity =  11
produit24.category = "produit sec"
file = File.open(safe_asset_path("Haricot-rouge.jpg"))
produit24.photo.attach(io: file, filename: "Haricot-rouge.jpg", content_type: "image/jpg")
produit24.save_if_able
# **************

produit27 = Product.new
produit27.name = "Farfalle"
produit27.description = "Farfalle"
produit27.pricing = 0.80
produit27.quantity = 3
produit27.category = "Produit sec"
file = File.open(safe_asset_path("Farfalle.jpg"))
produit27.photo.attach(io: file, filename: "Farfalle.jpg", content_type: "image/jpg")
produit27.save_if_able



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
user.first_name = "Brice"
user.last_name = "Moulin"
user.civility = "Mr"
user.email = "test@test.com"
user.address = "10 route de Balata-97200 Fort de France-Martinique"
user.zip_code = "97200"
user.city = "Fort de France"
user.country = "MArtinique"
user.phone = "06 98 22 97 93"
user.password = "123456"

user.save!

user1 = User.new
user1.first_name = "Léo"
user1.last_name = "Matrix"
user1.civility = "Mr"
user1.email = "leo.matrix@gmail.com"
user1.address = "10 route de Balata-97200 Fort de France-Martinique"
user1.zip_code = "97200"
user1.city = "Fort de France"
user1.country = "MArtinique"
user1.phone = "06 98 22 97 93"
user1.password = "leo123"

user1.save!
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

# TABLE BASKEuserT

User.all.each do |u|
  basket = Basket.new
  basket.relay_point_id = relay_point
  basket.user = u
  basket.basket_status = "pending"
  basket.save!
  puts "Basket for user #{u.full_name} created"
end

# TABLE BASKET ITEMS
Basket.all.each do |b|
  3.times do |i|
    basket_item = BasketItem.new
    basket_item.product = Product.all[i]
    basket_item.basket = b
    basket_item.quantity = 2
    basket_item.save!
  end
end
