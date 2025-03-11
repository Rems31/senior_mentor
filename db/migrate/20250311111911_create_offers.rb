class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :offer_type
      t.text :description
      t.integer :price
      t.string :area

      t.timestamps
    end
  end
end
