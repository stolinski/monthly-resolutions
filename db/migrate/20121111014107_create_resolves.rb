class CreateResolves < ActiveRecord::Migration
  def change
    create_table :resolves do |t|
      t.string :name
      t.date :date
      t.boolean :completed
      t.date :compleated_date
      t.integer :user_id

      t.timestamps
    end
  end
end
