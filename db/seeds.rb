puts "Destroy all"
Project.destroy_all

puts "Create projects"

def create_projects(name, description, image, github_url, url)
  project = Project.new(name: name, description: description, image: image, github_url: github_url, site_url: url)
  project.remote_image_url = image
  project.save
end

crazy_cocktails = create_projects("Crazy Cocktails",
  "A small Ruby on Rails project that allows users to create their own cocktails to add to a public repository. This was an individual project.",
  "https://res.cloudinary.com/dotvqg92r/image/upload/c_scale,w_400/v1560342929/CrazyCocktails_mzc02k.png",
  "https://github.com/iwolfisberg/crazy-cocktails",
  "https://crazycocktails.herokuapp.com/")
slowtraveller = create_projects("SlowTraveller",
  "A team project that was developed during Le Wagon Lausanne. SlowTraveller is an app for people that want to find their next destinations and are conscious of their carbon footprint while travelling.",
  "https://res.cloudinary.com/dotvqg92r/image/upload/c_scale,w_400/v1560342929/SlowTraveller_jld4tm.png",
  "https://github.com/iwolfisberg/slowtraveller",
  "http://slowtraveller.xyz/")
rent_a_cat = create_projects("Rent A Cat",
  "A clone of Airbnb, this Ruby on Rails application was a team project that was developed during Le Wagon Lausanne. *This is a fictionnal project.",
  "https://res.cloudinary.com/dotvqg92r/image/upload/c_scale,w_400/v1560342930/RentACat_cj1je1.png",
  "https://github.com/iwolfisberg/rent-a-cat",
  "https://rent-a-cat.herokuapp.com/")

I18n.locale = :fr
crazy_cocktails.description = "Un simple projet Ruby on Rails permettant aux utilisatuers de créer les recettes de cocktail et de les ajouter à un répertoire public. Ceci est un projet individuel.")
crazy_cocktails.save
slowtraveller.description = "Un projet développé en équipe lors des deux dernières semaines du Wagon Lausanne. SlowTraveller est une app pour les voyageurs désireux de trouver la prochaine étape de leur voyage et de s'y rendre avec la plus faible empreinte carbone possible.")
slowtraveller.save
rent_a_cat.description = "Clone de AirBnB, cette application Ruby on Rails est un projet développé en équipe lors du Wagon Lausanne. *Ceci est bien sûr un projet fictionnel.")
rent_a_cat.save
