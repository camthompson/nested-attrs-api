class PeopleController < ApplicationController
  respond_to :json

  def index
    respond_with Person.all
  end

  def create
    respond_with Person.create(person_params)
  end

  def destroy
    respond_with Person.find(params[:id]).delete
  end

  private

  def person_params
    params.require(:person).permit(:name, pets_attributes: [:name])
  end
end
