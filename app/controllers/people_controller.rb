class PeopleController < ApplicationController
  before_action :set_person, only: [:show]

  def index
    @people = Person.all
    json_response(@people)
  end

  def show
    json_response(@person)
  end

    private
      def set_person
        @person = Person.find(params[:id])
      end
end
