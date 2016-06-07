class Stay < ActiveRecord::Base

  validates :entry_date, :presence => true
  validates :exit_date, :presence => true
  validates :port_of_entry, :presence => true
  validates :port_of_exit, :presence => true
  validates :visa_status, :presence => true
  validates :reason_for_stay, :presence => true
  validates_date :entry_date
  validates_date :exit_date
  validates_date :entry_date, :on_or_before => lambda { :exit_date }

  belongs_to :user

end
