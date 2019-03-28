class Project
  attr_reader :title, :backers
  
  def initialize(title)
    @title=title
    @backers=[]
  end
  
  def add_backer(backer)
    @backers << backer
    !backer.backedbacker.back_project(self)
  end
end