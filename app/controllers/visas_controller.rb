class VisasController < ApplicationController
  def index
    @visas = Visa.all
  end

  def show
    @visa = Visa.find(params[:id])
  end

  def new
    @visa = Visa.new
  end

  def create
    @visa = Visa.new
    @visa.status = params[:status]

    if @visa.save
      redirect_to "/visas", :notice => "Visa created successfully."
    else
      render 'new'
    end
  end

  def edit
    @visa = Visa.find(params[:id])
  end

  def update
    @visa = Visa.find(params[:id])

    @visa.status = params[:status]

    if @visa.save
      redirect_to "/visas", :notice => "Visa updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @visa = Visa.find(params[:id])

    @visa.destroy

    redirect_to "/visas", :notice => "Visa deleted."
  end
end
