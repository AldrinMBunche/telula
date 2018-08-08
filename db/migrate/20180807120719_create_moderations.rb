class CreateModerations < ActiveRecord::Migration
  def change
    create_table :moderations do |t|
      t.integer :moderation_id
      t.integer :training_id
      t.integer :trainer_id
      t.integer :unit_id
      t.string :internal_by
      t.timestamp :internal_on
      t.string :internal_outcome
      t.string :internal_recommendation
      t.string :external_by
      t.timestamp :external_on
      t.string :external_outcome
      t.string :external_recommendation

      t.timestamps null: false
    end
  end
end
