class StaysController < ApplicationController
  def index
    @q = Stay.ransack(params[:q])
    if current_user != nil
      @stays = current_user.stays
    else
      @stays = @q.result
    end
    render 'index'
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
    @stay.notes = params[:notes]
    @stay.visa_status = params[:visa_status]
    @stay.reason_for_stay = params[:reason_for_stay]
    @stay.port_of_exit = params[:port_of_exit]
    @stay.port_of_entry = params[:port_of_entry]
    @stay.exit_date = Chronic.parse(params[:exit_date])
    @stay.entry_date = Chronic.parse(params[:entry_date])
    @stay.number_of_days = (@stay.exit_date - @stay.entry_date).to_i

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
    @stay.notes = params[:notes]
    @stay.visa_status = params[:visa_status]
    @stay.reason_for_stay = params[:reason_for_stay]
    @stay.port_of_exit = params[:port_of_exit]
    @stay.port_of_entry = params[:port_of_entry]
    @stay.number_of_days = params[:number_of_days]
    @stay.exit_date = params[:exit_date]
    @stay.entry_date = params[:entry_date]

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

  def print
    @stays = User.all.find(params[:id]).stays
    render 'print'
  end
end
