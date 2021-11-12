FactoryBot.define do
  factory :paper do
   title { "COMPUTING MACHINERY AND INTELLIGENCE" }
   venue { "Mind 49: 433-460" }
   year { 1950 }
#    authors {build_list :author, 1}
  end
  factory :paper_without_title, class: "Paper" do
    venue { "Mind 49: 433-460" }
    year { 1950 }
  end
  factory :paper_without_venue, class: "Paper" do
    title { "Mind 49: 433-460" }
    year { 1950 }
  end
  factory :paper_without_year, class: "Paper" do
    title { "COMPUTING MACHINERY AND INTELLIGENCE" }
    venue { "Mind 49: 433-460" }
  end
  factory :paper_with_invalid_year, class: "Paper" do
   title { "COMPUTING MACHINERY AND INTELLIGENCE" }
   venue { "Mind 49: 433-460" }
   year { "peter" }
  end
end
