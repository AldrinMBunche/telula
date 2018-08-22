class Learner < ActiveRecord::Base
  belongs_to :client
  belongs_to :training

@learners = Learner.analytics(:daily)  

  
end
