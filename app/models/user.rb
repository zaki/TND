class User < ActiveRecord::Base
  has_many :authorizations
  has_many :items

  def self.create_from_hash!(hash)
    logger.debug hash.to_yaml
    create(:name => hash['info']['name'], :location=>hash['info']['location'])
  end
end
