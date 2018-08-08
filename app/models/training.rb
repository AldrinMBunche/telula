class Training < ActiveRecord::Base
  belongs_to :client
  has_many :learners
end
