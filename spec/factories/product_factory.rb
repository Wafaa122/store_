FactoryBot.define do



    factory :product do
      name "Couch1"
      description "nice"
      price "700.0"
      colour "red"
      image_url "6.jpg"


end
    factory :comment do
      rating "5"
      body "Woow!"
    end
end