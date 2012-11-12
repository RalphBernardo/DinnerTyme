# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  steps      :text
#  serves     :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :name, :photo, :rating, :serves, :steps, :kitchen_id, :ingredient_ids, :remote_photo_url
  belongs_to :kitchen
  has_and_belongs_to_many :ingredients
  mount_uploader :photo, PhotoUploader
end
