# This is the steps file referred to dizer_numero feature
# Place your code relative to that feature here
#
Dado("que eu esteja em uma sala") do
  @room = Room.create(name: "sala")
  visit(room_path(@room))
end

Quando("eu preencher o campo para adivinhar numero com:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.rows_hash.each do |field,value|
    fill_in field,with: value
  end
end

Quando("clicar no link {string}") do |btn_chute|
  click_link btn_chute
end

Então("devo ver meu nome numa tabela com meu palpite escondido") do
  expect(page).to have_content "nicholas"
  expect(page).not_to have_content 26
end
