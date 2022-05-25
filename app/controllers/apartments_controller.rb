class ApartmentsController < ApplicationController
  def index
    apartments = Apartment.all
    render json: apartments
  end

  def create
    apartment = Apartment.find_by(id: params[:id])
    apartment.create(number: params[:number])
    render json: apartment
  end

  private
  # def apt_params
  #   params.permit(:number)
  # end
end
