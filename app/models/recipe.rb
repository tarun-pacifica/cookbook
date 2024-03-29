# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  cooktime     :integer
#  servingsize  :integer
#  instructions :integer
#  book_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  image        :text
#

class Recipe < ActiveRecord::Base
	attr_accessible	:name,:course,:cooktime, :servingsize, :instructions, :image, :book_id, recipe_ids
	belongs_to	:book
	has_and_belongs_to_many	:ingredients
end
