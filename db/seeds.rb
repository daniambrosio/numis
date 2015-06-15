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
category = CategoryUnclassified.find_or_create_by(
  name: "Não Classificado"
)
# category.sub_categories.find_or_create_by(name: "Classificar", system: true)

# ------
puts "Adicionar Categoria Entre Contas"
category = CategoryTransfer.find_or_create_by(
  name: "Lançamento Entre Contas"
)
# category.sub_categories.find_or_create_by(name: "Pagamento de Cartão", system: true)
# category.sub_categories.find_or_create_by(name: "Resgate", system: true)
# category.sub_categories.find_or_create_by(name: "Saque", system: true)
# category.sub_categories.find_or_create_by(name: "Aplicação", system: true)
# category.sub_categories.find_or_create_by(name: "Transferência", system: true)


# ------
puts "Adicionar Categorias de Renda"
category = CategoryIncome.find_or_create_by(
  name: "Renda"
)


# ------
puts "Adicionar Categorias de Despesas"
puts "Entretenimento"
category = CategoryExpense.find_or_create_by(
  name: "Entretenimento"
)
# category.sub_categories.find_or_create_by(name: "Artes", system: true)
# category.sub_categories.find_or_create_by(name: "Música", system: true)
# category.sub_categories.find_or_create_by(name: "Filmes e DVDs", system: true)
# category.sub_categories.find_or_create_by(name: "Jornais e Revistas", system: true)
# category.sub_categories.find_or_create_by(name: "Games", system: true)
