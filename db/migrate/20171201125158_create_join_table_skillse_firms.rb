class CreateJoinTableSkillseFirms < ActiveRecord::Migration[5.1]
  def change
    create_join_table :skills, :firms do |t|
      # t.index [:skill_id, :firm_id]
      # t.index [:firm_id, :skill_id]
    end
  end
end
