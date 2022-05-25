class ApartmentsController < ApplicationController
  def index
    apartments = Apartment.all
    render json: apartments
  end

  def create
    apartment = Apartment.create(number: params[:number])
    render json: apartment
  end

  def update
    apartment = Apartment.find_by(id: params[:id])
    apartment.update(number: params[:number])
    render json: apartment
  end

  private
  # def apt_params
  #   params.permit(:number)
  # end
end
