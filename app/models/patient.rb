class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def my_appts
    Appointment.all.select do |appt|
      appt.patient_id == self.id
    end
  end

end
