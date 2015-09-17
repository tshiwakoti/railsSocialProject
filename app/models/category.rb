# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  tag        :string
#  status_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  belongs_to :status
end
