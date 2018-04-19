# This is the steps file referred to criar_sala feature
# Place your code relative to that feature here
#
Quando("eu clicar no botão {string}") do |btn_nova_sala|
  click_link(btn_nova_sala)
end

Quando("preencher o formulário com:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.rows_hash.each do |field,value|
    fill_in field, with: value
  end
end

Quando("clicar no botão {string}") do |btn_enviar|
  click_button btn_enviar
end

Então("eu devo ser redirecionado para página inicial com a nova sala criada") do
  expect(current_path).to eq("/")
  expect(page).to have_content Room.last.name
end
