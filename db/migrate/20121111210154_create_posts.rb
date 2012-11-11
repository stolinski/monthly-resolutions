class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.boolean :status
      t.date :date
      t.date :complete_date
      t.integer :user_id

      t.timestamps
    end
  end
end
