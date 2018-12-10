require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  def initialize
    @homepage_url = 'https://www.bbc.co.uk'
    @sign_in_button_id = 'idcta-link'
  end

  def visit_homepage
    visit(@homepage_url)
  end

  def click_sign_in_button
    find("##{@sign_in_button_id}").click
  end

end
