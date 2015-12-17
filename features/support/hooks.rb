#browser = Watir::Browser.new :firefox
browser = Watir::Browser.new :chrome
Before do 
	@browser = browser
	@browser.cookies.clear
end

After do |scenario|
end

at_exit do
 @browser = browser
 @browser.close
end