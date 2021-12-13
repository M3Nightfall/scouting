class CreateScoutingsMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :scoutings_members do |t|
      t.integer :ScoutNummer
      t.string :VoorNaam
      t.string :AchterNaam
      t.integer :AantalBadges

      t.timestamps
    end
  end
end
