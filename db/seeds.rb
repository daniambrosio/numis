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
puts "Add Admin user"
if !(User.where(email: 'admin@example.com').exists?)
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

puts "Add Dani user"
if !(User.where(email: 'daniel.ambrosio@gmail.com').exists?)
  dani = User.new(
    email: 'daniel.ambrosio@gmail.com',
    first_name: 'Daniel',
    last_name: 'Ambrosio',
    roles: ['user'],
    password: 'dani1234',
    password_confirmation: 'dani1234'
  )
  dani.skip_confirmation!
  dani.save!
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
)
category.sub_categories.first_or_create!(name: "Classificar")

# ------
puts "Adicionar Categoria Entre Contas"
category = CategoryTransfer.first_or_create!(
  name: "Lançamento Entre Contas",
  type: "T",
)
category.sub_categories.first_or_create!(name: "Pagamento de Cartão")
category.sub_categories.first_or_create!(name: "Resgate")
category.sub_categories.first_or_create!(name: "Saque")
category.sub_categories.first_or_create!(name: "Aplicação")
category.sub_categories.first_or_create!(name: "Transferência")


# ------
puts "Adicionar Categorias de Renda"
category = CategoryIncome.first_or_create!(
  name: "Renda",
  type: "I",
)
category.sub_categories.find_or_create_by(name: "Salário")
category.sub_categories.find_or_create_by(name: "Investimento")
category.sub_categories.find_or_create_by(name: "Compra Devolvida")
category.sub_categories.find_or_create_by(name: "Bônus")
category.sub_categories.find_or_create_by(name: "Receitas de Juros")
category.sub_categories.find_or_create_by(name: "Reembolso")
category.sub_categories.find_or_create_by(name: "Receita de Aluguel")
category.sub_categories.find_or_create_by(name: "Dividendos")
category.sub_categories.find_or_create_by(name: "FGTS")


# ------
puts "Adicionar Categorias de Despesas"
puts "Categoria: Entretenimento"
category = CategoryExpense.first_or_create!(
  name: "Entretenimento",
  type: "E",
)
category.sub_categories.first_or_create!(name: "Artes")
category.sub_categories.first_or_create!(name: "Música")
category.sub_categories.first_or_create!(name: "Filmes e DVDs")
category.sub_categories.first_or_create!(name: "Jornais e Revistas")
category.sub_categories.first_or_create!(name: "Games")
