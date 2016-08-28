class Connectedpart < ApplicationRecord
  belongs_to :male_connect, :foreign_key => :male_id, :class_name => "Computerpart"
  belongs_to :female_connect, :foreign_key => :female_id, :class_name => "Computerpart"
  validates :female_id, :uniqueness => { :scope => :male_id }

end
