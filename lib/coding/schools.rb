class Coding::School
  attr_accessor :name, :about

def self.all #<-class method
  self.scrape_all_schools
end#all

def self.scrape_all_schools #<-class method
  school = []

  school << self.scrape_school("https://www.switchup.org/bootcamps/le-wagon")
  school << self.scrape_school("https://www.switchup.org/bootcamps/app-academy")
  school << self.scrape_school("https://www.switchup.org/bootcamps/ironhack")
  school << self.scrape_school("https://www.switchup.org/bootcamps/bloc")
  school << self.scrape_school("https://www.switchup.org/bootcamps/startup-institute")
  school << self.scrape_school("https://www.switchup.org/bootcamps/flatiron-school")
  school << self.scrape_school("https://www.switchup.org/bootcamps/the-tech-academy")
  school << self.scrape_school("https://www.switchup.org/bootcamps/epicodus")
  school << self.scrape_school("https://www.switchup.org/bootcamps/tech-talent-south")
  school << self.scrape_school("https://www.switchup.org/bootcamps/makers-academy")

end#scrape_all_schools

def self.scrape_school(school_url)
  doc = Nokogiri::HTML(open(school_url))

  school = self.new
  school.name = doc.search("#first-bootcamp-section .container .bootcamp-caption h1").text
  school.about = doc.search("blockquote#topic-description").text

  school

end#scrape_school
end#class
