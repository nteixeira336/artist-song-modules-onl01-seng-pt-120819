require 'pry'

class Song
  extend Memorable
  extend Findable::ClassMethods 
  include Paramable::InstanceMethods 
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end



  def self.all
    self.class.all << self  
  end

  def artist=(artist)
    @artist = artist
  end

 
end
