class Doctor < ActiveRecord::Base
	has_many :appointments
	has_many :patients, through: :appointments

	# def patient_count
	# 	@doctor.patients.count
	# end


end
