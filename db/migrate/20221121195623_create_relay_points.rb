class CreateRelayPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :relay_points do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
