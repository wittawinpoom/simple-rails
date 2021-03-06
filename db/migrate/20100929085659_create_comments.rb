class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :author
      t.string :email
      t.text :body
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps
    end
  end
  
  def self.down
    drop_table :comments
  end
end
