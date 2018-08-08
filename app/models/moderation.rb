class Moderation < ActiveRecord::Base
  has_many :learners
  has_many :trainers
  belongs_to :training
end
