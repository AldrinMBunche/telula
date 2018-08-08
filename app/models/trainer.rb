class Trainer < ActiveRecord::Base
  has_many :learners
  has_many :trainings
  belongs_to :client
end
