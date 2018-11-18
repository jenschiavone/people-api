FactoryBot.define do
    factory :person do
        first_name { Faker::Name.first_name }
        last_name { Faker::Name.last_name }
        display_name { Faker::Name.name }
        email_address { Faker::Internet.email("#{first_name}") }
        job_title { Faker::Job.title }
    end
end
