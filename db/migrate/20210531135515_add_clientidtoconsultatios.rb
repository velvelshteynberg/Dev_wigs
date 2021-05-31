class AddClientidtoconsultatios < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :client_id, :integer
  end
end
