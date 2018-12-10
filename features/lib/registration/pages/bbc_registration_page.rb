require 'capybara/dsl'

class BbcRegistrationPage
  include Capybara::DSL

  def initialize
    @age_verify_button = '13 or over'
    @day_field_id = 'day-input'
    @age_days = '20'
  end

  def click_over_13_button
    find("a[aria-label = '13 or over']").click
  end

  def enter_day
    find('#day-input').native.send_keys('20')
  end

  def enter_month
    find('#month-input').native.send_keys('04')
  end

  def enter_year
    find('#year-input').native.send_keys('1996')
  end

  def click_continue_button
    find('#submit-button').click
  end

  def enter_email
    find('#user-identifier-input').native.send_keys('egagola@spartaglobal.com')
  end

  def enter_password password
    find('#password-input').native.send_keys(password)
  end

  def get_error_message
    find("p[class = 'form-message__text']").text
  end

  def click_register_button
    find('#submit-button').click
  end

end
