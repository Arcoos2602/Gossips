class View

  def create_gossip
    puts "Qui est l'auteur ?"
    print "> "
    author = gets.chomp
    puts "Quelle est la rumeur ?"
    print "> "
    rumor = gets.chomp
    params = {content:rumor, author:author}
  end

  def delete_gossip
    puts "Quel potin voulez vous supprimer ? (donner le contenu)"
    print "> "
    gossip = gets.chomp
  end

  def index_gossips(gossips)
    gossips.each {|elem| puts elem.content}
  end
end