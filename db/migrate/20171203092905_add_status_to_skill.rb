class AddStatusToSkill < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :status, :boolean, null: false, default: false
  end
end
