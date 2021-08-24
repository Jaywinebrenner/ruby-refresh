class AddSubheaderToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :subheader, :text
  end
end
