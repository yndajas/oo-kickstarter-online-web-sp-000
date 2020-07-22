class Project
  attr_accessor :title
  attr_reader :backers
  
  def initialize(title)
    self.title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) if !backer.backed_projects.include?(self)
  end
  
end