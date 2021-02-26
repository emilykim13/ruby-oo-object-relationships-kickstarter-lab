class ProjectBacker

    attr_accessor :backer, :project 
    @@all = []

    def initialize(project, backer)
        @backer = backer 
        @project = project 
        @@all << self
    end

    def self.all
      @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

end