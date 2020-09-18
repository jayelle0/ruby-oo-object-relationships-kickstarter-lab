
class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = []
        ProjectBacker.all.map do |project_backer|
            # binding.pry
             if project_backer.project == self
                backers << project_backer.backer
             end  
        end
        backers
    end


end