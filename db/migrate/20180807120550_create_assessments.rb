class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.integer :assessment_id
      t.integer :training_id
      t.integer :trainer_id
      t.integer :unit_id
      t.integer :learner_id
      t.date :assess_date
      t.string :poe
      t.string :rpl
      t.string :results
      t.string :moderated
      t.string :attended
      t.string :formative_results
      t.integer :formative_attempts
      t.string :summative_results
      t.integer :summative_attempts
      t.string :poe_not_submit_reason
      t.string :reason_not_completed
      t.string :assesor_recommendations
      t.string :mentor_notes
      t.string :moderated_ext

      t.timestamps null: false
    end
  end
end
