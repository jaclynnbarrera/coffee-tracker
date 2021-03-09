class AddNeighborhoodColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :neighborhood, :string
  end
end
