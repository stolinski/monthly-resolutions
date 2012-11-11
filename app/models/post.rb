class Post < ActiveRecord::Base
  attr_accessible :complete_date, :date, :status, :title, :user_id
  belongs_to :user
end
