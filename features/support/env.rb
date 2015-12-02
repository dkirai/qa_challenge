require 'rspec'
require 'page-object'
require 'watir-webdriver'
require 'require_all'
require 'logger'
World(PageObject::PageFactory)


require_rel 'pages'
MERCHANT = YAML.load_file 'features/support/test_data/merchant.yml'

World(PageObject::PageFactory)


After do |scenario|
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.driver.save_screenshot(screenshot)
    encoded_img = @browser.driver.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
end