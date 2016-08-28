class User < ApplicationRecord
  has_many :addresses, inverse_of: :user
  accepts_nested_attributes_for :addresses, :reject_if => :all_blank

  has_many :initiated_friendings, :foreign_key => :friender_id, :class_name => "Friending"
  has_many :friended_users, :through => :initiated_friendings, :source => :friend_recipient

  # When acting as the recipient of the friending
  has_many :received_friendings, :foreign_key => :friend_id, :class_name => "Friending"
  has_many :users_friended_by, :through => :received_friendings, :source => :friend_initiator
end
