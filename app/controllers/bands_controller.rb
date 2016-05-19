class BandsController < ApplicationController

  def index
    @bands = Band.all.order('name asc')
  end

  def new
    @band = Band.new
  end

  def create
    bands = band_params[:name].split(',')

    if bands.count > 1
      bands.each do |band_name|
        band = Band.new name: band_name.strip
        band.save!
      end
    else
      band = Band.new band_params
      band.save!
    end

    redirect_to bands_path
  end

  def destroy
    @band = Band.find_by id: params[:id]

    @band.delete
    redirect_to bands_path
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end

end