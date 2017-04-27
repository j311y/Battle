feature 'Testing names' do
  scenario 'players fill in names' do
    sign_in_and_play
    expect(page).to have_content('Red vs. Blue')
  end
end
