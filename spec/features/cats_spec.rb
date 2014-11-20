require 'rails_helper'

feature 'cats' do

  scenario 'user can see list of cats toys' do
    cat = Cat.create!(
    name: "Steven"
    )
    toy = Toy.create!(
    name: "Buzz",
    cat_id: cat.id
    )

    visit root_path
    click_on "Cats"
    click_on "Steven"
    expect(page).to have_content(cat.toys.name)
  end

  scenario 'new toy has functional collection_select' do
    cat = Cat.create!(
    name: "Steven"
    )


    visit root_path
    click_on "Toys"
    click_on "New Toy!"
    fill_in "Name", with: "Buzz"
    select "Steven", from: "Cat"
    click_on "Create Toy"
    expect(page).to have_content "Buzz"


  end

end
