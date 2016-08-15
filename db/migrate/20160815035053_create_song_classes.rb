class CreateSongClasses < ActiveRecord::Migration
  def change
    create_table :song_classes do |t|
      t.string :audio_file
      t.string :song_name
      t.timestamps null: false
    end
  end
end
