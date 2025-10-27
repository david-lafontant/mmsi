FactoryBot.define do
  factory :entity do
    category { "" }
    owner { "" }
    registration_number { "MyString" }
    operation_area { "MyString" }
    station { nil }
    adress { "MyString" }
    municipality { "MyString" }
    latitude { "MyString" }
    longitude { "MyString" }
    company_name { "MyString" }
    owner_id_type { "" }
    owner_id_number { "MyString" }
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    telephone { "MyString" }
    mmsi { "MyString" }
    status { "MyString" }
    documents { nil }
  end
end
