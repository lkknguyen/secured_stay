require 'rails_helper'

RSpec.describe "reports/edit", :type => :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :user => nil,
      :id_number => "MyString",
      :id_type => "MyString",
      :country_code => "MyString",
      :activity => "MyText"
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "input#report_user_id[name=?]", "report[user_id]"

      assert_select "input#report_id_number[name=?]", "report[id_number]"

      assert_select "input#report_id_type[name=?]", "report[id_type]"

      assert_select "input#report_country_code[name=?]", "report[country_code]"

      assert_select "textarea#report_activity[name=?]", "report[activity]"
    end
  end
end
