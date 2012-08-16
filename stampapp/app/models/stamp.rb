class Stamp < ActiveRecord::Base
  attr_accessible :image
  mount_uploader :image, StampUploader
end
