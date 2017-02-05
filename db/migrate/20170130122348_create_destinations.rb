class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :place
      t.text :why_go
      t.text :to_do
      t.text :sights
      t.text :festivals
      t.text :sleep
      t.text :eat
      t.text :drink
      t.text :shop
      t.text :around

      t.timestamps
    end
  end
end
