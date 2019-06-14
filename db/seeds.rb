puts "Destroy all"
Project.destroy_all

puts "Create projects"

def create_projects(name, description, image, github_url, url)
  project = Project.new(name: name, description: description, image: image, github_url: github_url, site_url: url)
  project.remote_image_url = image
  project.save
end

create_projects("Crazy Cocktails",
  "A small Ruby on Rails project that allows users to create their own cocktails to add to a public repository. This was an individual project.",
  "https://res.cloudinary.com/dotvqg92r/image/upload/c_scale,w_400/v1560342929/CrazyCocktails_mzc02k.png",
  "https://github.com/iwolfisberg/crazy-cocktails",
  "https://crazycocktails.herokuapp.com/")
create_projects("SlowTraveller",
  "A team project that was developed during Le Wagon Lausanne. SlowTraveller is an app for people that want to find their next destinations and are conscious of their carbon footprint while travelling.",
  "https://res.cloudinary.com/dotvqg92r/image/upload/c_scale,w_400/v1560342929/SlowTraveller_jld4tm.png",
  "https://github.com/iwolfisberg/slowtraveller",
  "http://slowtraveller.xyz/")
create_projects("Rent A Cat",
  "A clone of Airbnb, this Ruby on Rails application was a team project that was developed during Le Wagon Lausanne. *This is a fictionnal project.",
  "https://res.cloudinary.com/dotvqg92r/image/upload/c_scale,w_400/v1560342930/RentACat_cj1je1.png",
  "https://github.com/iwolfisberg/rent-a-cat",
  "https://rent-a-cat.herokuapp.com/")
