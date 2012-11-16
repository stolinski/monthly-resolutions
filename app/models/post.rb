# == Schema Information
#
# Table name: posts
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  status        :boolean
#  date          :date
#  complete_date :date
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :complete_date, :date, :status, :title, :user_id
  belongs_to :user
end
