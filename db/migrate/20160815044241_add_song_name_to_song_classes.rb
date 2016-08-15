class AddSongNameToSongClasses < ActiveRecord::Migration
  def change
    add_column :song_classes, :song_name, :string
  end
end
