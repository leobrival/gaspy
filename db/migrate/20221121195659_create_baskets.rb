class CreateBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :baskets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :relay_point, null: true, foreign_key: true
      t.string :basket_status, default: 'pending'

      t.timestamps
    end
  end
end
