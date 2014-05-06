class RemovePhotoIdFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :photo_id
  end
end
