class Comment < ActiveRecord::Base
  attr_accessible :author, :email, :body, :commentable_id, :commentable_type
  
  belongs_to :commentable, :polymorphic => true
  
end
