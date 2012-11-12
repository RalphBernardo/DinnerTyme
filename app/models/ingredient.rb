# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  amount     :integer
#  unit       :string(255)
#  string     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :name, :unit, :recipe_ids, :photo, :remote_photo_url
  has_and_belongs_to_many :recipes
  mount_uploader :photo, PhotoUploader
end
