# == Schema Information
#
# Table name: kitchens
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string(255)
#

class Kitchen < ActiveRecord::Base
  attr_accessible :name, :photo, :recipes, :recipe_ids, :remote_photo_url
  has_many :recipes
  mount_uploader :photo, PhotoUploader
end
