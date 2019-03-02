class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, :through => :appointments

  # def all_patients
  #
  # end

end
