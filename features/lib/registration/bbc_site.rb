
# require relative your pages here
require_relative 'pages/bbc_registration_page.rb'
require_relative 'pages/bbc_homepage.rb'
require_relative 'pages/bbc_login_page.rb'

module BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_registration_page
    BbcRegistrationPage.new
  end

  def bbc_login_page
    BbcLoginPage.new
  end

end
