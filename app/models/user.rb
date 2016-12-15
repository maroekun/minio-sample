class User < ApplicationRecord

  # paperclip
  has_attached_file :icon, PAPERCLIP_OPTS[:icon]
  validates_attachment_content_type :icon, content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

  # carrierwave
  mount_uploader :avatar, AvatarUploader
end
