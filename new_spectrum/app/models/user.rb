class User < ActiveRecord::Base
  validates :name, presence: true
  validates :company_name, presence: true
  validates :username, presence: true
  validates :password, presence: true
  validates_uniqueness_of :username


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment_content_type :avatar,
                                   :content_type =>%w(image/jpeg image/png image/gif image/jpg image/pjpeg image/x-png),
                                   :message=>I18n.t('users.image_format')

end
