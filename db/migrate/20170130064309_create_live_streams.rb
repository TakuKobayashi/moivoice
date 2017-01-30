class CreateLiveStreams < ActiveRecord::Migration[5.0]
  def change
    create_table :live_streams do |t|
      t.integer :twitcas_user_id, null: false
      t.string :movieid
      t.string :live_url
      t.string :live_title
      t.string :thumbnail_url
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :state, null: false
      t.timestamps
    end
    add_index :live_streams, :twitcas_user_id
    add_index :live_streams, :movieid
    add_index :live_streams, [:started_at, :finished_at], name: "moi_voice_live_finished_at_index"
  end
end
