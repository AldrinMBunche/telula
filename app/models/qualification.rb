class Qualification < ActiveRecord::Base
  belongs_to :training
  belongs_to :client
  
end
