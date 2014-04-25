require 'spec_helper'

describe "results/show" do
  before(:each) do
    @result = assign(:result, stub_model(Result,
      :survey_id => 1,
      :user_id => 2,
      :salary => 3,
      :job_title => "Job Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Job Title/)
  end
end
