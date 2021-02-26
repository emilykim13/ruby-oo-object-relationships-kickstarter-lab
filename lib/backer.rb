class Backer
    attr_reader :name


    def initialize(name) 
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |pro|
            pro.backer == self
        end
    
        project_backers.map do |pro|
            pro.project
        end
    end
end

    
    
