Image.create!([
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", description: "Eius aut rerum inventore accusantium voluptatem eum.", product_id: 6},
  {url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg", description: "Mollitia totam delectus dicta facilis et recusandae maxime et.", product_id: 1},
  {url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", description: "Et eaque aut et sapiente.", product_id: 3},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", description: "Minima corrupti eos ipsum.", product_id: 4},
  {url: "nope", description: "Ut beatae aperiam molestiae officia voluptatem rerum sit est.", product_id: 7},
  {url: "it's just a water bottle don't worry about it", description: "Reprehenderit blanditiis consequatur minus quidem delectus quibusdam iste et.", product_id: 8},
  {url: nil, description: "Eos fugit et harum sit doloribus velit et.", product_id: 9},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", description: "Repellendus molestiae eos ut.", product_id: 2},
  {url: "http://www.notcot.com/images/guide.gif", description: "Voluptatem optio placeat quo.", product_id: 5}
])
Product.create!([
  {name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", in_stock: nil, supplier_id: 1},
  {name: "Sonic Screwdriver", price: "9.0", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", in_stock: nil, supplier_id: 2},
  {name: "WNYX Mug", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", in_stock: nil, supplier_id: 2},
  {name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", in_stock: nil, supplier_id: 2},
  {name: "fjasdfkj", price: "33.55", description: "ajdfkasd;lfkjaslk;dfjklsadjflksdajfl;ksjadflkjsadl;fkjaslk;dfjkl;asdjflkasdjflksdajfklsdajfasdjfkl;asjdflk;jsdaklfjasdlfjasdlk;fjadsklfjldksafjlksadjfsadklfjlkas;dfjkasdfjkldasfjdsklfjdsklafjsdalfjklsadfjklasdfjsadl;fjdsakl;fjkl;sadfj;lsadfjklasfjas;dlfjka;lsdfjkl;asdfjkasd;lfjaskd;lfjaklsd;fjsakldfjkasdl;fjsda;lkfjksdla;fjkdsa;ldfjas;dklfjakls;dfjsa;ldfjkasd;lkfjklasdfjkasdfj;asldkfjasdk;fjdsa;fjk;lkadsjfa;sldkfja;skldf", in_stock: true, supplier_id: 1},
  {name: "water bottle", price: "1.0", description: "it is blue", in_stock: true, supplier_id: 2},
  {name: "chair", price: "2.99", description: "asdhfkjasdhf", in_stock: nil, supplier_id: 1},
  {name: "Lightsaber", price: "270.0", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", in_stock: nil, supplier_id: 2},
  {name: "Hitchhiker's Guide to the Galexy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", in_stock: nil, supplier_id: 1}
])
Supplier.create!([
  {name: "amazon", phone_number: "34567890", email: "am@zom.com"},
  {name: "wal-mart", phone_number: "999999", email: "w@lmart.com"}
])
User.create!([
  {email: "bob@bob.com", name: "bob", password_digest: "$2a$10$HdQV5K.ZN5ogOMESbratTOvQ4oY.dugefK0s1/FjXajMYEV0SG17K"},
  {email: "alex@alex.com", name: "alex", password_digest: "$2a$10$mgbyDwi9Iy5CMMB8GnQDFeEVQb874xGjB0yePAQ7sjdnBVc.ZBJ1q"},
  {email: "alex@alex.com", name: "alex", password_digest: "$2a$10$oAQHTzYkOjG5swAXrMaumuLhicXKwhLs/EC8aLHynrBGJdhuvH9WK"}
])

# Product.destroy_all

# Product.create([
#     {
#       name: "Sonic Screwdriver",
#       description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood",
#       image_url: "https://dyn0.media.forbiddenplanet.com/products/28577492.jpg",
#       price: 9 #8.99
#     },
#     {
#       name: "Lightsaber",
#       description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster",
#       image_url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif",
#       price: 270 # 270.10
#     },
#     {
#       name: "WNYX Mug",
#       description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape",
#       image_url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png",
#       price: 2 # 1.50
#     },
#     {
#       name: "Space Cowboy Laser Gun",
#       description: "This weapon has no other description than, Shiney!",
#       image_url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776",
#       price: 170 # 170.89
#     },
#     {
#       name: "Hitchhiker's Guide to the Galexy",
#       description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.",
#       image_url: "http://www.notcot.com/images/guide.gif",
#       price: 42 # 42.00
#     },
#     {
#       name: "DnD Dice set",
#       description: "Take down mighty dragons with this timeless set of 20 sided wonders",
#       image_url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg",
#       price: 57 # 57.50
#     }
#   ])


# assign supplier ids to products
# grab all the products
# products = Product.all
# suppliers = Supplier.all
# # loop through them
# products.each do |product|
#   # assign an appropriate id to each of them
#   product.supplier_id = suppliers.sample.id
#   product.save
# end


# make new Images based on image column from products
# products = Product.all
# # loop through them
# products.each do |product|
#   # make a new image for each product
#   image = Image.new(url: product.image_url, product_id: product.id, description: Faker::Lorem.sentence)
#   image.save
# end
