# This is the steps file referred to listar_salas feature
# Place your code relative to that feature here
#
Dado("que eu esteja na página inicial") do
  visit("/")
end

Então("eu devo ver a lista de salas disponiveis para jogar") do
  Room.all.each do |room|
    expect(page).to have_content room.name
  end
end
