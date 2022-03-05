FactoryBot.define do
  factory :message do
    content { "MyString" }
    sender { nil }
    receiver { nil }
  end
end
