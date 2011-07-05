class Bday < ActiveRecord::Base
  validates_format_of :my_date, :with => /^\d{1,2}\/\d{1,2}\/\d{4}$/
end
