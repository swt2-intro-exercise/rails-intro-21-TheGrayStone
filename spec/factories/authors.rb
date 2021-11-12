FactoryBot.define do
  factory :author do
    first_name { "Alan" }
    last_name { "Turing" }
    homepage { "http://wikipedia.de/Alan_Turing" }
  end
  factory :invalid_author, class: "Author" do
    first_name { "alan" }
    homepage { "http://example.com" }
  end
end
