class Rating < ActiveRecord::Base
	 include Rhoconnectrb::Resource
  attr_accessible :demoid, :rating, :username

   def partitiion
  	:app
  end

 def self.rhoconnect_query(partition, attributes = nil)
  logger.info("****************************")
    Rating.all
  end
end
