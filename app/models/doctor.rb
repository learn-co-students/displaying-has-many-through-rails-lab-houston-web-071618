class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def my_appts
    Appointment.all.select do |appt|
      appt.doctor_id == self.id
    end
  end

end
