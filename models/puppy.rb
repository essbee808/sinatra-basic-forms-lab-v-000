require 'pry'
class Puppy
  attr_accessor :name, :breed, :months_old
  
  def initialize(hash)
    hash.each {|k,v| self.send("#{k}=", v)}
  end
  
end 