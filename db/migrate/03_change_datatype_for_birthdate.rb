class ChangeDatatypeForBirthdate < ActiveRecord::Migration[6.1]
    def change
        reversible do |dir|
          change_table :students do |t|
            dir.up   { t.change :birthdate, :datetime }
            dir.down { t.change :birthdate, :string }
          end
        end
    end
end