class Appointment < ActiveRecord::Base

  belongs_to :doctor
  belongs_to :patient

  def self.get_readable_date_time(d_t)
    m = d_t.strftime("%B")
    d = d_t.day
    y = d_t.year
    app_time = d_t.strftime("%H:%M")
    "#{m} #{d}, #{y} at #{app_time}"
  end

end
