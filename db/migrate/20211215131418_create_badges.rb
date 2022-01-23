class CreateBadges < ActiveRecord::Migration[6.1]
  def change
    create_table :badges do |t|
      t.string :Les_Naam
      t.string :Chapter

      t.timestamps
    end
  end
end
