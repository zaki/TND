class User < ActiveRecord::Base
  has_many :authorizations

  def self.create_from_hash!(hash)
    logger.debug hash.to_yaml
    create(:name => hash['info']['name'])
  end
end
