require 'rails_helper'

RSpec.feature 'Creating articles' do
   scenario "A user creates a new article" do
     visit '/'
     
     click_link 'New article'
     
     fill_in 'Title', with: 'Creating a blog'
     fill_in 'Body', with: 'Lorem Ipsum'
     
     click_button 'Create article'
     
     expect(page).to have_content('Article has been created')
     expect(page.current_path).to eq(articles_path)
   end
end
