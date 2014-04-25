require 'spec_helper'

describe "results/new" do
  before(:each) do
    assign(:result, stub_model(Result,
      :survey_id => 1,
      :user_id => 1,
      :salary => 1,
      :job_title => "MyString"
    ).as_new_record)
  end

  it "renders new result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", results_path, "post" do
      assert_select "input#result_survey_id[name=?]", "result[survey_id]"
      assert_select "input#result_user_id[name=?]", "result[user_id]"
      assert_select "input#result_salary[name=?]", "result[salary]"
      assert_select "input#result_job_title[name=?]", "result[job_title]"
    end
  end
end
