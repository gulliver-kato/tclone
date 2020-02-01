class RenamecontentColumnToContents < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogs, :content, :content
  end
end
