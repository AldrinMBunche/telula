class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.integer :training_id
      t.integer :client_id
      t.integer :branch_id
      t.integer :qualification_id
      t.string :training_status
      t.integer :number_of_learners
      t.string :re_certification
      t.string :event_type
      t.string :assessment_method
      t.string :internal
      t.timestamp :start_on
      t.timestamp :end_on
      t.string :venue
      t.date :cert_valid_from
      t.date :cert_valid_to
      t.string :remind_expiry
      t.string :machine_code
      t.string :machine_attachment
      t.string :machine_capacity
      t.string :learnership_branch
      t.string :learnership_site
      t.string :notes
      t.string :qa
      t.integer :duration
      t.date :ls_start_on
      t.date :ls_end_on

      t.timestamps null: false
    end
  end
end
