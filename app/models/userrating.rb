class Userrating < ActiveRecord::Base
	include Rhoconnectrb::Resource
  attr_accessible :demo, :name, :rating

  has_many :demos
  has_many :users
  def partitiion
  	:app
  end

 def self.rhoconnect_query(partition, attributes = nil)
  logger.info("****************************")
    Userrating.all
  end
end
