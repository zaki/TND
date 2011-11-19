class Item < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :name, :description, :presence=>true
  validate :expires_at_is_in_future

  scope :public,  where(:public=>true)
  scope :private, where(:public=>false)

  has_attached_file :photo,
                    :styles => { :medium => "300x300>", :thumb => "180x180>" },
                    :storage => :s3,
                    :bucket => 'treasure.nd1',
                    :s3_credentials => {
                      :access_key_id => ENV['S3_KEY_ID'],
                      :secret_access_key => ENV['S3_SECRET']
                    }

  def expire_date
    expires_at.strftime('%Y-%m-%d')
  end

private
  def expires_at_is_in_future
    errors.add(:expires_at, '') unless (expires_at.future?)
  end

end
