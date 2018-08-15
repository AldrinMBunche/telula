class Learner < ActiveRecord::Base
  belongs_to :client
  belongs_to :training

@learners = Learner.analytics(:daily)  => {"August 15, 2018" => 6}
end
