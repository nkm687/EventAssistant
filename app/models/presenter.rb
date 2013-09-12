class Presenter < ActiveRecord::Base
	include Rhoconnectrb::Resource
  attr_accessible :name, :team

  has_and_belongs_to_many :demos

  def partitiion
  	"helo"
  end

  def self.rhoconnect_query(partition, attributes = nil)
  	Presenter.all
  end
end
