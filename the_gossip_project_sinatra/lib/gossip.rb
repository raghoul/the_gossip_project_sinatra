require 'csv'

class Gossip
    attr_accessor :author, :content, :id

    def initialize(author, content)
        @author = author
        @content = content
    end

    
    def save
        #Ouvrir le csv en mode écriture ab, qui a pour chemin "./db..."
        CSV.open("./db/gossip.csv", "ab") do |csv|
            #Inserer une ligne avec deux colonne
            csv << [@author, @content]
        end
    end

    def self.all
        #initialise un array vide
        all_gossips = []
        CSV.read("./db/gossip.csv").each do |csv_line|
            #Prend chaque nouveau potin et l'ajoute au fichier csv
            all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end
        return all_gossips
    end

    def self.find(id)
        #Associe à author l'auteur du potin à l'id fixé dans l'url
        @author = self.all[id.to_i].author
        @content = self.all[id.to_i].content
        return [@author, @content]
        #En une seule ligne :
        #return [self.all[id.to_i].author,  self.all[id.to_i].content].join(" à écrit : ")
    end

    def self.update(author, content, id)
         all_gossips = [] # récup du csv sous forme de tableau
        CSV.read("db/gossip.csv").each do |csv_line|
          all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end

        all_gossips.each_with_index do |gossip, i|
          if id-1 == i # si l'id correspond au numéro de ligne on modifie l'index du tableau
        all_gossips[i] = Gossip.new(@author, @content)
          end
        end

        CSV.open("db/gossip.csv", "wb") do |csv| # réécriture tout le csv à partir du tableau modifié
          all_gossips.each do |gossip|
        csv << [gossip.author, gossip.content]
          end
        end
        
    end

end
