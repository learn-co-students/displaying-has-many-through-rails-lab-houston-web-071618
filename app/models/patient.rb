class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def number_of_appointments
    Appointment.all.select{|a| a.patient == self}.length
  end
end
