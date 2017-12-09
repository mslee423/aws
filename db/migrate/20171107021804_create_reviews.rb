class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :post
      t.string :todo
      t.timestamps null: false
    end
  end
end
