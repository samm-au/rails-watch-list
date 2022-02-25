class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :list, null: false, foreign_key: true
      t.text :comment
      t.string :poster_url
      t.float :rating

      t.timestamps
    end
  end
end
