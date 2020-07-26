require 'pry'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    gossips = []
    CSV.foreach('./db/gossip.csv') do |row|
      gossip = Gossip.new(row[0], row[1])
      gossips << gossip
    end
    gossips
  end

  def self.delete(param)
    CSV.open("./db/gossip.csv","w") do |csv|
      
    end
  end

end
