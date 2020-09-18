require 'pry'

class Backer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 
    
    def self.all
        @@all 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        ProjectBacker.all.select do |project_backer|
            # binding.pry
             if project_backer.backer == self
                .map do |project_backer|
                    project_backer.packed
                end 
             end 
             
        end

    end


end 
