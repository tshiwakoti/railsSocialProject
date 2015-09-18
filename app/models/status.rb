# == Schema Information
#
# Table name: statuses
#
#  id          :integer          not null, primary key
#  title       :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Status < ActiveRecord::Base
  belongs_to :user
  has_many :categories
  has_many :comments
end
