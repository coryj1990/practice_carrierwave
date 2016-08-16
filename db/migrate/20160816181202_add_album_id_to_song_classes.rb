class AddAlbumIdToSongClasses < ActiveRecord::Migration
  def change
    add_column :song_classes, :album_ID, :integer
  end
end
