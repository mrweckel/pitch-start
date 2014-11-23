class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :pitch, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end


# vik=User.create(username:"viktor", password:"pass")
# vik.pitches.create(title:"ESPN", url:"www.google.com")
