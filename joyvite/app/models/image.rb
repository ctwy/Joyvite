class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :venue
end
