require 'rails_helper'

RSpec.describe "reports/index", :type => :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :user => nil,
        :id_number => "Id Number",
        :id_type => "Id Type",
        :country_code => "Country Code",
        :activity => "MyText"
      ),
      Report.create!(
        :user => nil,
        :id_number => "Id Number",
        :id_type => "Id Type",
        :country_code => "Country Code",
        :activity => "MyText"
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Id Number".to_s, :count => 2
    assert_select "tr>td", :text => "Id Type".to_s, :count => 2
    assert_select "tr>td", :text => "Country Code".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
