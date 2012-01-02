class Image < ActiveRecord::Base
  has_attached_file :gallery, :styles => { :thumb => '288x140' }
  has_attached_file :main, :styles => { :large => "608x408>" }

  validates_presence_of :title
  validates_presence_of :slug
  validates_presence_of :user_id
  validates_uniqueness_of :slug

  has_and_belongs_to_many :categories
  belongs_to :user

  acts_as_taggable_on :breeds, :colors, :styles

  acts_as_product
end
