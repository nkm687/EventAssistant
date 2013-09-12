class Booth < ActiveRecord::Base
	include Rhoconnectrb::Resource
  attr_accessible :location, :number
  has_many :demos

  def partitiion
  	"helo"
  end

  def self.rhoconnect_query(partition, attributes = nil)
  	Booth.all
  end
end
