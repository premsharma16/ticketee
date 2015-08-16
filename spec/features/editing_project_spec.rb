require 'spec_helper'


feature 'Editing the Projects' do
	scenario 'updating a project' do

		FactoryGirl.create(:project,name: 'TextMate 2')
		visit '/'
		click_link 'TextMate 2'
		click_link 'Edit Project'
		click_button "Update Project"

		expect(page).to have_content("Project has been updated.")
	end
end