class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new
    @country.name = params[:name]

    if @country.save
      redirect_to "/countries", :notice => "Country created successfully."
    else
      render 'new'
    end
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])

    @country.name = params[:name]

    if @country.save
      redirect_to "/countries", :notice => "Country updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @country = Country.find(params[:id])

    @country.destroy

    redirect_to "/countries", :notice => "Country deleted."
  end
end
