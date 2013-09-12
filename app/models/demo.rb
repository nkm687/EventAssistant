class Demo < ActiveRecord::Base
	   include Rhoconnectrb::Resource
  attr_accessible :avg_user_rating, :description, :keywords, :misc, :name,:booth_id

  has_and_belongs_to_many :presenters
  belongs_to :booth

  def partitiion
  	:app
  end

 def self.rhoconnect_query(partition, attributes = nil)
  logger.info("****************************")
    Demo.all
  end
end
