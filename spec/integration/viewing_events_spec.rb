require "spec_helper"

feature "Viewing events" do
  scenario "Listing all events" do
    event = Factory.create(:event, :description => "My Birthday")
    visit "/"
    click_link "My Birthday"
    page.current_url.should == event_url(event)
  end


end
