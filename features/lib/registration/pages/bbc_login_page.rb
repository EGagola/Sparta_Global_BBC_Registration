require 'capybara/dsl'

class BbcLoginPage
  include Capybara::DSL

  def initialize
    @login_page_url = 'https://account.bbc.com/signin'
    @register_link = 'link link--primary'
  end

  def visit_homepage
    visit(@login_page_url)
  end

  def click_register_now_button
    find("a[class='link link--primary']").click
  end

end
