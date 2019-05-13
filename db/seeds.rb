require 'faker'

Restaurant.destroy_all
Review.destroy_all

cat = ['chinese', 'italian', 'japanese', 'french', 'belgian']
5.times do
  restaurant = Restaurant.new(
    name: Faker::Name.unique.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: cat.sample
  )
  review = Review.new(
    restaurant: restaurant,
    content: Faker::TvShows::FamilyGuy.quote,
    rating: rand(0..5)
    )
  restaurant.save!
  review.save!
end
