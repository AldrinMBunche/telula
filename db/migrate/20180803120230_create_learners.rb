class CreateLearners < ActiveRecord::Migration
  def change
    create_table :learners do |t|
      t.integer :learner_id
      t.integer :client_id
      t.string :id_type
      t.integer :id_number
      t.string :passport_number
      t.string :date_of_birth
      t.string :first_name
      t.string :last_name
      t.string :middle_names
      t.string :title
      t.string :equity
      t.string :gender
      t.string :nationality
      t.string :citizen_status
      t.string :disability_status
      t.string :home_language
      t.string :organising_framework_occupations
      t.string :socioeconomic_status
      t.string :no_education
      t.integer :highest_school_grade
      t.string :abet
      t.string :tertiary_qualification
      t.string :license_code
      t.integer :cellphone_number
      t.string :email_address
      t.string :next_of_kin_name
      t.string :next_of_kin_contact_no
      t.string :guardian_name
      t.integer :guardian_contact_no
      t.string :storage_cabinet_no
      t.date :disposal_date
      t.string :r_address_line_1
      t.string :r_address_line_2
      t.string :r_suburb
      t.string :r_city
      t.string :r_province
      t.integer :r_postal_code
      t.string :r_country
      t.string :p_address_line_1
      t.string :address_line_2
      t.string :p_suburb
      t.string :p_city
      t.string :p_province
      t.integer :p_postal_code
      t.string :p_country
      t.string :municipality
      t.string :urban_rural
      t.text :photo
      t.string :photo_name
      t.string :notes

      t.timestamps null: false
    end
  end
end
