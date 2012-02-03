class CreateCommentings < ActiveRecord::Migration
  def self.up
    create_table :commentings do |t|
      t.integer :blog_id
      t.text :comment_posted

      t.timestamps
    end
  end

  def self.down
    drop_table :commentings
  end
end
