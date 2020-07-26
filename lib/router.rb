require 'controller'

class Router
  @controller

  def initialize
    @controller = Controller.new
  end

  def perform
    while true
      puts "Que veux tu faire ?\na : créer un gossip\nb:voir tous les potins\nc: Supprimer un potin de votre choixd : quitter l'app"
      print "> "
      input = gets.chomp
      case input
        when "a"
          puts "Tu as choisis de créer un nouveau gossip"
          @controller.create_gossip
        when "b"
          puts "Tu as choisis de voir tous les potins"
          @controller.index_gossips
        when "c"
          puts "Tu as choisis de supprimer un potin"
          @controller.delete_gossip
        when "d"
          puts "A bientot"
          break
        else
          puts "Mauvais input, fais pas le con"
      end
    end
  end
end