FactoryBot.define do
  factory :adress do
    street { "MyString" }
    suburb { "MyString" }
    postcode { "MyString" }
    state { "MyString" }
    gig { nil }
  end
end
