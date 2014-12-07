

html = open("http://www.i3investor.com/jsp/pt.jsp")
nokogiri = Nokogiri::HTML(html)
stock_info = nokogiri.css('div.roundbox725b table.nc tr') 

stock_info.each do |cell|
  name = cell.css('td.left a').text
  prices = cell.css('td.right').collect do |price|
    price.text
  end
  puts prices[0]
  Stock.new(name, prices[0], prices[1])
end