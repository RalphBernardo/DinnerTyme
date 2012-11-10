# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  unit       :string(255)
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string(255)
#

class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :name, :unit, :recipe_ids, :photo, :remote_photo_url
  has_and_belongs_to_many :recipes
  mount_uploader :photo, PhotoUploader
end
