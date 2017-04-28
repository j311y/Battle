require_relative './web_helpers'

feature 'Hit points' do

  scenario 'view hit points of P1' do
    sign_in_and_play
    expect(page).to have_content 'Red: 30HP'
  end

  scenario 'view hit points of P2' do
    sign_in_and_play
    expect(page).to have_content 'Blue: 30HP'
  end

  scenario 'get confirmation of attack' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "It's super effective!"
  end

  scenario 'reduce P2 hit points by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Back')
    expect(page).not_to have_content 'Blue: 30HP'
    expect(page).to have_content 'Blue: 20HP'
  end
end
