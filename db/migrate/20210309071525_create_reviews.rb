class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :content
      t.string :rating
      t.string :work_space
      t.integer :user_id
    end
  end
end
