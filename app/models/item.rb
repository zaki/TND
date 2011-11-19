class Item < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :name, :description, :presence=>true
  validate :expires_at_is_in_future

  scope :public,  where(:public=>true)
  scope :private, where(:public=>false)

  def expire_date
    expires_at.strftime('%Y-%m-%d')
  end

private
  def expires_at_is_in_future
    errors.add(:expires_at, '') unless (expires_at.future?)
  end

end
