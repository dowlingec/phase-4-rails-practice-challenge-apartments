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

  def destroy
    apartment = Apartment.find_by(id: params[:id])
    activity.destroy
    header :no_content
  end

  private
  # def apt_params
  #   params.permit(:number)
  # end
end
