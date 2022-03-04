FactoryBot.define do
  factory :booking do
    tickets { 1 }
    price { 1.5 }
    user { nil }
    gig { nil }
  end
end
