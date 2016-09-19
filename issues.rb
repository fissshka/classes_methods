require 'selenium-webdriver'
require 'test/unit'
module IssueCreation
  class FirstTest < Test::Unit::TestCase
    include MainMethods
    def test_issue_bug
      bug_creation

      @wait.until{@driver.find_element(:class, 'issue').displayed?}
      expected = @bug_subject
      actual = @driver.find_element(:class, 'issue').find_element(:class, 'subject').text
      assert_equal(expected, actual)
    end

    def bug_creation
      subproj_open

      @wait.until{@driver.find_element(:id, 'main-menu').displayed?}
      @driver.find_element(:id, 'main-menu').find_element(:class, 'new-issue').click
      @wait.until{@driver.find_element(:id, 'issue_tracker_id').displayed?}
      @issue_type = Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, 'issue_tracker_id'))
      @issue_type.select_by(:value, '1')

      @bug_subject = 'Critical bug in the project'
      @bug_description = 'This is bug'

      @driver.find_element(:id, 'issue_subject').send_keys @bug_subject
      @driver.find_element(:id, 'issue_description').send_keys @bug_description

      @wait.until{@driver.find_element(:name, 'commit').displayed?}
      @driver.find_element(:name, 'commit').click
    end

    def teardown
      @driver.quit
    end
  end
end