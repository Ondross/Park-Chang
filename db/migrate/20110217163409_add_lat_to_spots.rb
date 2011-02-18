class AddLatToSpots < ActiveRecord::Migration
  def self.up
    add_column :spots, :lat, :decimal
    add_column :spots, :long, :decimal
    add_column :spots, :rating, :integer, :default => 0
    add_column :spots, :ratecount, :integer
    add_column :spots, :cost, :boolean
    add_column :spots, :handicap, :boolean
    add_column :spots, :comments, :text
  end

  def self.down
    remove_column :spots, :comments
    remove_column :spots, :handicap
    remove_column :spots, :cost
    remove_column :spots, :ratecount
    remove_column :spots, :rating
    remove_column :spots, :long
    remove_column :spots, :lat
  end
end
