class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :client_id
      t.integer :company_id
      t.string :type
      t.string :name
      t.string :business_reg_no
      t.integer :tel_no
      t.integer :fax_no
      t.string :account_no
      t.string :r_address_line_1
      t.string :r_address_line_2
      t.string :r_suburb
      t.string :r_city
      t.string :r_province
      t.integer :r_postal_code
      t.string :r_country
      t.string :p_address_line_1
      t.string :p_address_line_2
      t.string :p_suburb
      t.string :p_city
      t.string :p_province
      t.integer :p_postal_code
      t.string :p_country
      t.integer :client_branch
      t.string :sales_person
      t.string :branch_id
      t.string :sdl_number
      t.string :contact_name
      t.string :main_email
      t.string :wdyhau
      t.integer :credit_limit
      t.string :payment_term

      t.timestamps null: false
    end
  end
end
