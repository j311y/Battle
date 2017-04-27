require_relative './web_helpers'

feature 'Hit points' do
  scenario 'view hit points of P2' do
    sign_in_and_play
    expect(page).to have_content 'Blue: 30HP'
  end

  scenario 'get confirmation of attack' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "It's super effective!"
  end
end
