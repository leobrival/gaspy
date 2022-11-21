class CreateBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :baskets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :relay_point, null: false, foreign_key: true
      t.string :basket_status

      t.timestamps
    end
  end
end
