class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
