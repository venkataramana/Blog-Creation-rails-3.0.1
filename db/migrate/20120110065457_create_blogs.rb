class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :title
      t.text :post
      t.integer :admin_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
