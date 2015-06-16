# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# -----------------------
# Usuarios
# -----------------------
puts "Add admin user"
if !(User.where(email: 'admin@example.com'))
  admin = User.new(
    email: 'admin@example.com',
    first_name: 'Sample',
    last_name: 'User',
    roles: ['admin'],
    password: 'administrator',
    password_confirmation: 'administrator'
  )
  admin.skip_confirmation!
  admin.save!
end

# -----------------------
# Categorias
# Com base no mint: https://www.mint.com/mint-categories/
# -----------------------

# ------
puts "Adicionar Categoria Nao Classificado"
category = CategoryUnclassified.first_or_create!(
  name: "Não Classificado",
  type: "U",
  system: true
)
# category.sub_categories.first_or_create!(name: "Classificar", system: true)

# ------
puts "Adicionar Categoria Entre Contas"
category = CategoryTransfer.first_or_create!(
  name: "Lançamento Entre Contas",
  type: "T",
  system: true
)
# category.sub_categories.first_or_create!(name: "Pagamento de Cartão", system: true)
# category.sub_categories.first_or_create!(name: "Resgate", system: true)
# category.sub_categories.first_or_create!(name: "Saque", system: true)
# category.sub_categories.first_or_create!(name: "Aplicação", system: true)
# category.sub_categories.first_or_create!(name: "Transferência", system: true)


# ------
puts "Adicionar Categorias de Renda"
category = CategoryIncome.first_or_create!(
  name: "Renda",
  type: "I",
  system: true
)


# ------
puts "Adicionar Categorias de Despesas"
puts "Categoria: Entretenimento"
category = CategoryExpense.first_or_create!(
  name: "Entretenimento",
  type: "E",
  system: true
)
# category.sub_categories.first_or_create!(name: "Artes", system: true)
# category.sub_categories.first_or_create!(name: "Música", system: true)
# category.sub_categories.first_or_create!(name: "Filmes e DVDs", system: true)
# category.sub_categories.first_or_create!(name: "Jornais e Revistas", system: true)
# category.sub_categories.first_or_create!(name: "Games", system: true)
