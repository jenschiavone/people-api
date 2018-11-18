module PeopleService
  def self.get_people_list
    api_key = ENV['SL_API_KEY']
    response = HTTParty.get "https://api.salesloft.com/v2/people.json?include_paging=true", :headers => {
      "Authorization" => "Bearer #{api_key}"}
    people = []
    response['data'].each do |sl_person|
      person = Person.new
      person.first_name = sl_person['first_name']
      person.last_name = sl_person['last_name']
      person.display_name = sl_person['display_name']
      person.email_address = sl_person['email_address']
      person.job_title = sl_person['job_title']
      people << person
    end
    return people
  end
end
