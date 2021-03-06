class Card < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :question, :answer
  validates_associated :user

  default_scope { order 'updated_at DESC' }

end
