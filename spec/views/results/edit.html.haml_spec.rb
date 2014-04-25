require 'spec_helper'

describe "results/edit" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :survey_id => 1,
      :user_id => 1,
      :salary => 1,
      :job_title => "MyString"
    ))
  end

  it "renders the edit result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", result_path(@result), "post" do
      assert_select "input#result_survey_id[name=?]", "result[survey_id]"
      assert_select "input#result_user_id[name=?]", "result[user_id]"
      assert_select "input#result_salary[name=?]", "result[salary]"
      assert_select "input#result_job_title[name=?]", "result[job_title]"
    end
  end
end
