class AddPhotoUrlToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :photo_url, :string
  end
end
