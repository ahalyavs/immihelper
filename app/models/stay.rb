class Stay < ActiveRecord::Base

  validates :entry_date, :presence => true
  validates :exit_date, :presence => true
  validates :port_of_entry, :presence => true
  validates :port_of_exit, :presence => true
  validates :reason, :presence => true
  validates :visa_status, :presence => true

  belongs_to :user

end
