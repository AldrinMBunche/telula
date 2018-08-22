class Client < ActiveRecord::Base
   has_many :learners
  has_many :trainings
  has_many :trainers
  has_many :qualifications
end
