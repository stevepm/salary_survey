require 'spec_helper'

describe "results/index" do
  before(:each) do
    assign(:results, [
      stub_model(Result,
        :survey_id => 1,
        :user_id => 2,
        :salary => 3,
        :job_title => "Job Title"
      ),
      stub_model(Result,
        :survey_id => 1,
        :user_id => 2,
        :salary => 3,
        :job_title => "Job Title"
      )
    ])
  end

  it "renders a list of results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
  end
end
