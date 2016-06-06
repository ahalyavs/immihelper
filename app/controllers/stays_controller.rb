class StaysController < ApplicationController

  require 'date'

  def index
    @stays = Stay.all
  end

  def show
    @stay = Stay.find(params[:id])
  end

  def new
    @stay = Stay.new
  end

  def create
    @stay = Stay.new
    @stay.user_id = params[:user_id]
    @stay.visa_status = params[:visa_status]
    @stay.reason = params[:reason]
    @stay.port_of_entry = params[:port_of_entry]
    @stay.port_of_exit = params[:port_of_exit]
    @stay.entry_date = params[:entry_date]
    @stay.exit_date = params[:exit_date]
    # @stay.days = (@stay.exit_date - @stay.entry_date).to_i
    @stay.username = params[:username]

    if @stay.save
      redirect_to "/stays", :notice => "Stay created successfully."
    else
      render 'new'
    end
  end

  def edit
    @stay = Stay.find(params[:id])
  end

  def update
    @stay = Stay.find(params[:id])

    @stay.user_id = params[:user_id]
    @stay.visa_status = params[:visa_status]
    @stay.reason = params[:reason]
    @stay.port_of_entry = params[:port_of_entry]
    @stay.port_of_exit = params[:port_of_exit]
    @stay.days = params[:days]
    @stay.entry_date = params[:entry_date]
    @stay.exit_date = params[:exit_date]
    @stay.username = params[:username]

    if @stay.save
      redirect_to "/stays", :notice => "Stay updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @stay = Stay.find(params[:id])

    @stay.destroy

    redirect_to "/stays", :notice => "Stay deleted."
  end
end
