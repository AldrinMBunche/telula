class Training < ActiveRecord::Base
   has_many :qualifications
  belongs_to :client
  has_many :learners
 
end