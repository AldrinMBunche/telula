class CreateLearnerEvents < ActiveRecord::Migration
  def change
    create_table :learner_events do |t|
      t.integer :TRAINING_ID
      t.integer :LEARNER_ID
      t.integer :AGREEMENT_NO
      t.date :AGREEMENT_ON
      t.integer :REGISTRATION_NO
      t.integer :CERTIFICATE_NO
      t.date :CERTIFICATE_ON
      t.integer :BATCH_NO
      t.string :MACHINE_RESTRICTION
      t.text :CERTIFICATE_ISSUED
      t.text :CERTIFICATE_ISSUED_BY
      t.integer :OLD_BATCH_NO
      t.date :CANCELATION_ON
      t.date :TRADE_TEST_ON
      t.string :CERTIFICATE_NOTES
      t.text :MED
      t.text :HQ
      t.text :EYE
      t.text :PRDP
      t.text :LOG
      t.text :PRI_OR
      t.text :ID_DOC

      t.timestamps null: false
    end
  end
end
