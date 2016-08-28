class Computerpart < ApplicationRecord
  has_many :insert_connect, :foreign_key => :male_id, :class_name => "Connectedpart"
  has_many :male_connected, :through => :insert_connect, :source => :female_connect

  has_many :recieve_connect, :foreign_key => :female_id, :class_name => "Connectedpart"
  has_many :female_connected, :through => :recieve_connect, :source => :male_connect
end
