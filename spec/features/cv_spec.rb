require 'spec_helper'

describe 'cv', type: :feature do

  before do
    visit '/cv.html'
  end

  it 'displays titles for paragraphs' do
    expect(page).to have_selector 'h4'
  end

  it 'displays correct h4 text' do
    expect(page).to have_content 'Liseberg'
  end

  it 'displays paragraphs' do
    expect(page).to have_selector 'p'
  end

  it 'displays jumbotron and jumbotron header' do
    expect(page).to have_css '.jumbotron'
    within '.jumbotron' do
      expect(page).to have_content 'Curriculum Vitae'
    end
  end
end
