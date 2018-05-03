require "rubygems"
require "test/unit"
require "watir"

class AdventuresSearch < Test::Unit::TestCase
  def setup
    @browser ||= Watir::Browser.new :firefox
  end

  def teardown
    @browser.close
  end

  def test_search
    @browser.goto "google.com"
    @browser.text_field(:name => "q").set "adventures"
    @browser.element(name: "btnK").click
    @browser.div(:id => "msg_box").wait_until_present assert
  end
end