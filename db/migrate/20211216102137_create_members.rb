class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :scoutnummer
      t.string :voornaam
      t.string :achternaam

      t.timestamps
    end
  end
end
