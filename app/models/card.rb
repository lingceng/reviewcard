class Card < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :question, :answer
  validates_associated :user
  validates :question, :answer, length: { minimum: 5 }

  default_scope { order 'updated_at DESC' }

end
