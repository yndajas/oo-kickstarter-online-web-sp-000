class Project
  attr_accessor :title
  attr_reader :backers
  
  def initialize(title)
    self.title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer # add passed in backer to @backers
    backer.back_project(self) if !backer.backed_projects.include?(self)  # add self to backer's @backed_projects if not already in there
  end
  
end