require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramble'

class Song

  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramble

  attr_accessor :name
  attr_reader :artist

  @@songs = []

#  def initialize
#    self.class.all << self
#  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
