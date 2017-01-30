class CreateTwitcasUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :twitcas_users do |t|
      t.string :twitcas_user_id, null: false
      t.string :twitcast_uesr_screen_id, null: false
      t.string :name
      t.string :profileimage_url
      t.text :access_token
      t.integer :expires_in, null: false, default: 0
      t.datetime :last_logined_at, null: false
      t.timestamps
    end
    add_index :twitcas_users, :twitcas_user_id, unique: true
    add_index :twitcas_users, :twitcast_uesr_screen_id
  end
end
