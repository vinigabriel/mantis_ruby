require 'minitest/autorun'
require 'mantis_ruby'

class MantisRubyTest < Minitest::Test
  def test_hi
    assert_equal "Hello developer! Welcome to Mantis Ruby Gem."+
    "You can use MantisRuby.help any time to get the help.",
      MantisRuby.hi
  end

  def test_mantis_issue_in_format
    assert_equal ({:id=>1, :status=>"new", :summary=>"First issue", :actual=>"Actual result", :expected=>"Expected Result", :screenresolution=>"Give if possible", :description=>"Description \r\n ---------------- \r\n Actual Result: \r\n Your actual desult will be shown here. \r\n ---------------- \r\n Expected Result:\r\n Expected Result will be shown here \r\n ---------------- \r\n Screen Resolution:\r\n Screen resolution will come here.", :steps_to_reproduce=>"Step to reproduce", :additional_information=>"additional_information", :category=>"General", :add_note=>"bug note", :resolution=>"screenresolution", :severity=>"10", :reproducibility=>"Reproducibility", :priority=>"10", :file_location=>"http://dimomohit.com/assets/logo-a40f75aaa7c1d5a2a3f99e8da5e8159c353e407ffdc1c29dfabe43e4c7e8bd41.png", :content_type=>"png", :project=>{:id=>"project_id", :name=>"project_name"}}),
      MantisRuby.issue_in_format({})
  end

  def test_mantis_custom_issue
    assert_equal ({:id=>1, :status=>"new", :summary=>"First issue", :actual=>"Actual result", :expected=>"Expected Result", :screenresolution=>"Give if possible", :description=>"Description \r\n ---------------- \r\n Actual Result: \r\n Your actual desult will be shown here. \r\n ---------------- \r\n Expected Result:\r\n Expected Result will be shown here \r\n ---------------- \r\n Screen Resolution:\r\n Screen resolution will come here.", :steps_to_reproduce=>"Step to reproduce", :additional_information=>"additional_information", :category=>"General", :add_note=>"bug note", :resolution=>"screenresolution", :severity=>"10", :reproducibility=>"Reproducibility", :priority=>"10", :file_location=>"http://rubyonrails.org/images/rails-logo.svg", :content_type=>"svg", :project=>{:id=>"project_id", :name=>"project_name"}}),
    MantisRuby.issue_in_format({:file_location=>"http://rubyonrails.org/images/rails-logo.svg", :content_type=>"svg"})
  end

end