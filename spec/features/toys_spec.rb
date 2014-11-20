require 'rails_helper'

feature 'toy' do
  scenario 'user can see toys cat' do
    cat = Cat.create!(
      name: "Steven"
    )
    toy = Toy.create!(
      name: "Buzz",
      cat_id: cat.id
    )

    visit root_path
    click_on "Toys"
    click_on "Buzz"
    expect(page).to have_content(toy.cat.name)
  end

  scenario 'links to cat works' do
    cat = Cat.create!(
    name: "Steven"
    )
    toy = Toy.create!(
    name: "Buzz",
    cat_id: cat.id
    )

    visit root_path
    click_on "Toys"
    click_on "Steven"
    expect(page).to have_content("This cat's toys are")

  end

end
