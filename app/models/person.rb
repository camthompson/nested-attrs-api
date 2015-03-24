class Person < ActiveRecord::Base
  has_many :pets, dependent: :destroy
  accepts_nested_attributes_for :pets
end
