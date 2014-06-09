require 'rails_helper'

RSpec.describe "reports/show", :type => :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :user => nil,
      :id_number => "Id Number",
      :id_type => "Id Type",
      :country_code => "Country Code",
      :activity => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Id Number/)
    expect(rendered).to match(/Id Type/)
    expect(rendered).to match(/Country Code/)
    expect(rendered).to match(/MyText/)
  end
end
