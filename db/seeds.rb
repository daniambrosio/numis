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

# =====================================
# ------
puts "Adicionar Categoria Nao Classificado"
category = CategoryUnclassified.first_or_create!(
  name: "Não Classificado",
  group: :unclassified
)
category.sub_categories.first_or_create!(name: "Classificar")

# ------
puts "Adicionar Categoria Split"
category = CategorySplit.first_or_create!(
  name: "Dividida",
  group: :split
)
category.sub_categories.first_or_create!(name: "Dividida")


# =====================================
# ------
puts "Adicionar Categoria Entre Contas"
category = CategoryTransfer.first_or_create!(
  name: "Lançamento Entre Contas",
  group: :transfer
)
category.sub_categories.first_or_create!(name: "Pagamento de Cartão")
category.sub_categories.first_or_create!(name: "Resgate")
category.sub_categories.first_or_create!(name: "Saque")
category.sub_categories.first_or_create!(name: "Aplicação")
category.sub_categories.first_or_create!(name: "Transferência")


# =====================================
# ------
puts "Adicionar Categorias de Renda"
category = CategoryIncome.first_or_create!(
  name: "Renda",
  group: :income
)
category.sub_categories.first_or_create!(name: "Salário")
category.sub_categories.first_or_create!(name: "Investimento")
category.sub_categories.first_or_create!(name: "Compra Devolvida")
category.sub_categories.first_or_create!(name: "Bônus")
category.sub_categories.first_or_create!(name: "Receitas de Juros")
category.sub_categories.first_or_create!(name: "Reembolso")
category.sub_categories.first_or_create!(name: "Receita de Aluguel")
category.sub_categories.first_or_create!(name: "Dividendos")
category.sub_categories.first_or_create!(name: "FGTS")


# =====================================
puts "Adicionar Categorias de Despesas"

# ------
puts "Educação"
category = CategoryExpense.where(name: "Educação").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Aulas")
category.sub_categories.first_or_create!(name: "Empréstimo Estudantil")
category.sub_categories.first_or_create!(name: "Livros e Suprimentos")

# ------
puts "Categoria: Entretenimento"
category = CategoryExpense.where(name: "Entretenimento").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Artes")
category.sub_categories.first_or_create!(name: "Música")
category.sub_categories.first_or_create!(name: "Filmes e DVDs")
category.sub_categories.first_or_create!(name: "Jornais e Revistas")
category.sub_categories.first_or_create!(name: "Games")

# ------
puts "Compras"
category = CategoryExpense.where(name: "Compras").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Roupas")
category.sub_categories.first_or_create!(name: "Livros")
category.sub_categories.first_or_create!(name: "Eletrônicos e Software")
category.sub_categories.first_or_create!(name: "Hobbies")
category.sub_categories.first_or_create!(name: "Artigos Esportivos")

# ------
puts "Cuidados Pessoais"
category = CategoryExpense.where(name: "Cuidados Pessoais").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Lavanderia")
category.sub_categories.first_or_create!(name: "Cabelo")
category.sub_categories.first_or_create!(name: "Spa e Massagem")
category.sub_categories.first_or_create!(name: "Cremes e Maquiagem")

# ------
puts "Saúde e Fitness"
category = CategoryExpense.where(name: "Saúde e Fitness").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Dentista")
category.sub_categories.first_or_create!(name: "Médico")
category.sub_categories.first_or_create!(name: "Farmácia")
category.sub_categories.first_or_create!(name: "Seguro Saúde")
category.sub_categories.first_or_create!(name: "Academia")
category.sub_categories.first_or_create!(name: "Esportes")

# ------
puts "Crianças"
category = CategoryExpense.where(name: "Crianças").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Atividades Infantis")
category.sub_categories.first_or_create!(name: "Mesada")
category.sub_categories.first_or_create!(name: "Produtos para Bebês")
category.sub_categories.first_or_create!(name: "Babá e Creche")
category.sub_categories.first_or_create!(name: "Pensão Alimentícia")
category.sub_categories.first_or_create!(name: "Brinquedos")


# ------
puts "Pets"
category = CategoryExpense.where(name: "Pets").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Banho e Tosa")
category.sub_categories.first_or_create!(name: "Veterinário")
category.sub_categories.first_or_create!(name: "Ração e Agradinhos")


# ------
puts "Alimentação e Gastronomia"
category = CategoryExpense.where(name: "Alimentação e Gastronomia").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Mantimentos")
category.sub_categories.first_or_create!(name: "Cafeterias")
category.sub_categories.first_or_create!(name: "Fast Food")
category.sub_categories.first_or_create!(name: "Restaurantes")
category.sub_categories.first_or_create!(name: "Bares")

# ------
puts "Presentes e Doações"
category = CategoryExpense.where(name: "Presentes e Doações").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Presentes")
category.sub_categories.first_or_create!(name: "Caridade")


# ------
puts "Investimentos"
category = CategoryExpense.where(name: "Investimento").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Depósitos")
category.sub_categories.first_or_create!(name: "Saques")
category.sub_categories.first_or_create!(name: "Dividendos e Ganhos de Capital")
category.sub_categories.first_or_create!(name: "Compra")
category.sub_categories.first_or_create!(name: "Venda")
category.sub_categories.first_or_create!(name: "Fundos")


# ------
puts "Contas e Serviços Públicos"
category = CategoryExpense.where(name: "Contas e Serviços Públicos").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Televisão")
category.sub_categories.first_or_create!(name: "Internet")
category.sub_categories.first_or_create!(name: "Telefone")
category.sub_categories.first_or_create!(name: "Celular")
category.sub_categories.first_or_create!(name: "Luz e Eletricidade")
category.sub_categories.first_or_create!(name: "Água")
category.sub_categories.first_or_create!(name: "Gás")
category.sub_categories.first_or_create!(name: "Aluguel")
category.sub_categories.first_or_create!(name: "Condomínio")
category.sub_categories.first_or_create!(name: "Financiamento Imobiliário")
category.sub_categories.first_or_create!(name: "Serviços Públicos")

# ------
puts "Auto e Transporte"
category = CategoryExpense.where(name: "Auto e Transporte").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Combustível")
category.sub_categories.first_or_create!(name: "Estacionamento")
category.sub_categories.first_or_create!(name: "Serviços e Auto Partes")
category.sub_categories.first_or_create!(name: "Finaciamento Veículo")
category.sub_categories.first_or_create!(name: "Legalização Veículo")
category.sub_categories.first_or_create!(name: "Multas")
category.sub_categories.first_or_create!(name: "Seguro Veículo")
category.sub_categories.first_or_create!(name: "Transporte Público")

# ------
puts "Viagem"
category = CategoryExpense.where(name: "Viagem").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Passagem Aérea")
category.sub_categories.first_or_create!(name: "Hotel")
category.sub_categories.first_or_create!(name: "Aluguel de Carro e Táxi")
category.sub_categories.first_or_create!(name: "Férias")
category.sub_categories.first_or_create!(name: "Passagem Rodoviária")
category.sub_categories.first_or_create!(name: "Pedágios")

# ------
puts "Taxas e Encargos"
category = CategoryExpense.where(name: "Taxas e Encargos").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Taxa de Serviço")
category.sub_categories.first_or_create!(name: "Taxa por Atraso e Multa")
category.sub_categories.first_or_create!(name: "Encargos Financeiros")
category.sub_categories.first_or_create!(name: "Taxa de Saque e Caixa Eletrônico")
category.sub_categories.first_or_create!(name: "Taxa Bancária")
category.sub_categories.first_or_create!(name: "Comissão de Negociação")

# ------
puts "Impostos"
category = CategoryExpense.where(name: "Impostos").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Imposto Federal")
category.sub_categories.first_or_create!(name: "Imposto Estadual")
category.sub_categories.first_or_create!(name: "Imposto Local")
category.sub_categories.first_or_create!(name: "Imposto sobre a Venda")
category.sub_categories.first_or_create!(name: "Imposto sobre a Propriedade")

# ------
puts "Serviços à Empresa"
category = CategoryExpense.where(name: "Serviços à Empresa").first_or_create!(
  group: :expense
)
category.sub_categories.first_or_create!(name: "Propaganda")
category.sub_categories.first_or_create!(name: "Suprimentos de Escritório")
category.sub_categories.first_or_create!(name: "Impressão")
category.sub_categories.first_or_create!(name: "Frete")
category.sub_categories.first_or_create!(name: "Legal e Jurídica")

