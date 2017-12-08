require 'rails_helper'

feature 'create articles' do
  let(:title) { 'Sucess from Failure' }
  let(:body_copy) do
    title + "\n" +
    (3..6).to_a.sample.times.map do
      [
        "## " + FFaker::Lorem.sentence((4..6).to_a.sample),
        FFaker::Lorem.paragraph
      ]
    end.flatten.join("\n")
  end

  scenario 'a user adds an aritcle' do
    visit new_article_path
    fill_in 'Title', with: title

    fill_in 'Body', with: body_copy
    click_on "Create Article"

    expect(page).to have_content title
    expect(page).to have_text "Article created"
  end
end
