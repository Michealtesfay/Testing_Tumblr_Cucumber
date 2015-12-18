class App
	def initialize(browser)
		@browser = browser
	end

	def generic_page
			GenericPages.new @browser
	end

	def tumblr_login
			TumblrLoginPage.new @browser
	end

	def tumblr_dashboard
			TumblrDashboardPage.new @browser
	end
end
