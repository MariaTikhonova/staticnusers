require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
 test "layout links" do 
 	get root_path
 	assert_template 'pages/main'
 	assert_select "a[href=?]", root_path
 	assert_select "a[href=?]", about_path
 	assert_select "a[href=?]", help_path
 end
end
