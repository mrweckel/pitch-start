class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :title
      t.string :url
      t.references :user

      t.timestamps
    end
  end
end
