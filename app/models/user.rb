class User < ActiveRecord::Base
	 include Rhoconnectrb::Resource
  attr_accessible :extra, :name

# def partitiion
 # 	:app
  #end

 #def self.rhoconnect_query(partition, attributes = nil)
  #logger.info("****************************")
   # User.find(:all, :conditions => {'name' => attributes}
#)
 # end
end
