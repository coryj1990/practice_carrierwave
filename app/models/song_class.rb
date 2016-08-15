class SongClass < ActiveRecord::Base

	mount_uploader :audio_file, SonguploaderUploader

end
