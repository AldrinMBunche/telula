class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.integer :qualification_id
      t.string :saqa_aligned
      t.string :is_single_unit
      t.integer :code
      t.string :title
      t.string :display_name
      t.integer :nqf_level
      t.integer :credits
      t.string :accredited
      t.date :accredited_start_on
      t.date :accredited_end_on
      t.date :saqa_reg_start_on
      t.date :saqa_reg_end_on
      t.boolean :can_expire
      t.integer :valid_months
      t.string :use_assessor
      t.string :use_learnership_fields
      t.string :use_training_planner
      t.string :use_machine_attributes
      t.string :use_logbook_fields
      t.integer :certificate_template_id
      t.string :status
      t.string :created_by
      t.timestamp :created_on
      t.string :qualification_type
      t.date :saqa_enroll_end_on
      t.string :use_formative_summative
      t.string :use_apprenticeship_fields
      t.string :artisan_trade

      t.timestamps null: false
    end
  end
end
