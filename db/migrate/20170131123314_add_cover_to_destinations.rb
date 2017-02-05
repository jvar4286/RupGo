class AddCoverToDestinations < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :destinations,:cover
  end
end
