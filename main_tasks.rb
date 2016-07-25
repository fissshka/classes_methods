require 'test/unit'
require 'selenium-webdriver'

class FirstTest < Test::Unit::TestCase
  def setup
    @driver = Selenium::WebDriver::Chrome::Service.executable_path = File.join(Dir.pwd, '/chromedriver.exe')
    @driver = Selenium::WebDriver.for :chrome
    #@driver = Selenium::WebDriver.for :firefox
    @wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  end
  def test_digit_sum
#Create a method which will take a natural number as an argument and will find a sum of all its digits
  end

  def test_max_string
    #There is a string. Find a maximum number of digits placed in a row in it
  end
  def test_max_num_str
    #There is a string. Find a maximal number (not a digit) in it
  end
  def test_num_string
    #There are two strings. Find number of first chars from first string matching first chars of the second string. Consider two cases:
    #strings are definitely different
    #strings can completely match
  end
  def test_array
    #There is an array of integers. First puts elements with even indexes and then with odd indexes
  end
  def test_arr_last
    #There is an array of integers (ary). Puts the index of the last element where ary[0]<ary[i]<ary[-1]
  end
  def test_modify_arr
    #There is an array of integers (ary). Modify it with adding ary[0] (first element of the array) to each even number. Don't do it for first and last elements
  end

  def test_positive_registration
    register_user
    expected_text = 'Your account has been activated. You can now log in.'
    actual_text = @driver.find_element(:id, 'flash_notice').text
    @wait.until{@driver.find_element(:id, 'flash_notice').displayed?}
    assert_equal(expected_text, actual_text)
  end
  def register_user
    @driver.navigate.to 'http://demo.redmine.org'
    @wait.until{@driver.find_element(:class, 'register').displayed?}
    @driver.find_element(:class, 'register').click
    @wait.until{@driver.find_element(:id, 'user_login').displayed?}

    @login = ('login' + rand(99999).to_s)
    @init_pass = 'Qwerty'

    @driver.find_element(:id, 'user_login').send_keys @login
    @driver.find_element(:id, 'user_password').send_keys @init_pass
    @driver.find_element(:id, 'user_password_confirmation').send_keys @init_pass
    @driver.find_element(:id, 'user_firstname').send_keys 'first_name'
    @driver.find_element(:id, 'user_lastname').send_keys 'user_lastname'
    @driver.find_element(:id, 'user_mail').send_keys(@login + '@mailinator.com')

    @driver.find_element(:name, 'commit').click
  end


  def teardown
    @driver.quit
  end
end