class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :location
      t.string :budget
      t.text :desc
      t.string :category

      t.timestamps
    end
  end
end
