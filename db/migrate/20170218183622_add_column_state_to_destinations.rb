class AddColumnStateToDestinations < ActiveRecord::Migration[5.0]
  def change
    add_column :destinations, :state, :string, default: "in_draft" 
  end
end
