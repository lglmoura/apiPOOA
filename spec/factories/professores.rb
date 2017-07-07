# spec/factories/professores.rb
FactoryGirl.define do
  factory :professor do
    nome { Faker::Name.name }
    endereco { Faker::Address.street_address }
    telefone { Faker::PhoneNumber.phone_number}
    email { Faker::Internet.email }
  end
end
