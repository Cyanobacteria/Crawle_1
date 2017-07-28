require 'nokogiri'
require 'open-uri'
class Crawle1sController < ApplicationController
  
  def index

  end
  

  def page1
    htmlData = "
    <html>
	<title> This is a simple html </title>
	<body id='story_body'>
		<h2> this is h2 in story_body </h2>
	</body>
	<h1> test h1-1 </h1>
	<h1> test h1-2 </h1>
	<h3>
		<img src = 'goodPic-1.jpg' >
		<a href = 'www.google.com'> google web site </a>
		<img src = 'goodPic-2.jpg' > 
		<a href = 'www.yahoo.com'> yahoo web site </a>
	</h3>
	<div class= 'div_1'>
		<h2> this is h1 in div_1 </h2>
	</div>
    </html>
    "
    doc = Nokogiri::HTML( htmlData ) 
    @test = doc.xpath("//h1") 
  end
  
  def page2
    url = "https://www.openfoundry.org/tw/tech-column/8478--ruby-on-rails-crud"
    doc = Nokogiri::HTML(open( url ))
    @test = doc.xpath("//p")[10]
  end
  
  def page3
    url = "http://taqm.epa.gov.tw/taqm/tw/AqiMap.aspx"
    doc = Nokogiri::HTML(open( url ))
    #@test = doc.xpath("//p")
    @test= doc
  end
  def page4
    url = "http://taqm.epa.gov.tw/taqm/tw/Aqi/North.aspx?type=all&fm=AqiMap" 	
    doc = Nokogiri::HTML(open( url ))

    #doc = Nokogiri::HTML( open( url ), nil, 'UTF-8' )
    #@title = doc.xpath("//span[@id='ctl09_gv2_ctl01_labSortNO2']")
    #@title = doc.xpath(//"[@id='ctl09_gv2_ctl01_labSortNO2']")
    #@title = doc.xpath('//span')
    #@title = doc
    @test = "hihi"
  end
  
end
