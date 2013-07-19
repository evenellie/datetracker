require "spec_helper"

feature "Creating Dates" do

  scenario "can create date" do
    visit "/"
    click_link "Add Date"

    within("#event_event_2i") { select "November" }
    within("#event_event_3i") { select "4" }
    within("#event_event_1i") { select "2013" }

    fill_in "Description", :with => "My birthday"
    click_button "Save the Date"
    page.should have_content("Date saved")
  end

end
