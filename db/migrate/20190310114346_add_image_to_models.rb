class AddImageToModels < ActiveRecord::Migration[5.2]
  def up
    add_attachment :users, :avatar
    add_attachment :projects, :image
    add_attachment :groups, :image
  end

  def down
    remove_attachment :users, :avatar
    remove_attachment :projects, :image
    remove_attachment :groups, :image
  end
end
