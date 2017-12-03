class RemoveLogoFromFirms < ActiveRecord::Migration[5.1]
  def change
    remove_column :firms, :logo, :string
  end
end
