class AddPlayerPhotoUrl < ActiveRecord::Migration
def up
    add_column :players, :photo_url, :string, :default => ''
  end

  def down
    remove_column :players, :photo_url
  end
end
