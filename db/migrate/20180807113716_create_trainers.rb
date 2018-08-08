class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.integer :trainer_id
      t.integer :client_id
      t.string :first_name
      t.string :middle_names
      t.string :last_name
      t.string :id_number
      t.timestamp :date_of_birth
      t.string :status
      t.string :created_by
      t.timestamp :created_on
      t.string :type
      t.integer :contact_no
      t.string :staff_rate_type
      t.integer :staff_rate
      t.string :status_reason
      t.string :notes
      t.string :id_type
      t.string :training_speciality_area
      t.string :email_address
      t.string :licence_code

      t.timestamps null: false
    end
  end
end
