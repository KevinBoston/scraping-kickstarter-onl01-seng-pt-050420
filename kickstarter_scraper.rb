# require libraries/modules here
require 'Nokogiri'
require 'pry'



def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  # projects = kickstarter.css("li.project.grid_4")
  # title project.css("h2.bbcard_name strong a").text
  #image project.css("div.project-thumbnail a image").attribute("src").value 
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {}
  end
  projects 
end