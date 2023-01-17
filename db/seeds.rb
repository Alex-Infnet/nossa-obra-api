# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create the Clients examples

def client
  Client.create(name: "Client example 1", document: "1", email: "client_1@nossaobra.com.br", description: "Here we have a client example for the Nossa 
    obra application", address: "Rio de Janeiro")
  Client.create(name: "Client example 2", document: "2", email: "client_2@nossaobra.com.br", description: "Here we have a client example for the Nossa 
    obra application", address: "Sao Paulo")
end

def user
  User.create(
    email: "user_1@nossaobra.com.br", name: "User", document: "1", phone: "0", description: "I'm a user from client 1", address: "Rio de Janeiro",
    password: "user_1", username: "user_1", client: Client.find(1)
  )
  User.create(
    email: "user_2@nossaobra.com.br", name: "User", document: "2", phone: "0", description: "I'm a user from client 2", address: "Rio de Janeiro",
    password: "user_2", username: "user_2", client: Client.find(2)
  )
end

def project
  Project.create(
    name: "Obra 1", description: "I'm a build to be executed", start_date: "2023-02-01", status: 1, client: Client.find(1)
  )

  Project.create(
    name: "Obra 2", description: "I'm a build to be executed", start_date: "2023-02-01", status: 1, client: Client.find(2)
  )
end

def category
  Category.create(
    name: "Pavimentação",
    description: "Esta categoria descreve as principais atividades de pavimentação"
  )
  Category.create(
    name: "Pintura",
    description: "Esta categoria descreve as principais atividades de pintura"
  )
end

def executor
  Executor.create(
    name: "Executor da obra",
    phone: "0",
    email: "executor@nossaobra.com.br",
    address: "Rio de Janeiro"
  )
end

def activity
  Activity.create(
    name: "Primeiro pavimento", description: "Execução de todo primeiro pavimento", project: Project.where(name: "Obra 1").first,
    category: Category.where(name: "Pavimentação").first, start_date: "2023-02-01", duration: 1, cost: 150.0, bdi: 0.5, complexity: 70,
    executor: Executor.where(name: "Executor da obra").first
  )
  Activity.create(
    name: "Agua no pavimento", description: "Jogar agua no pavimento", project: Project.where(name: "Obra 1").first,
    category: Category.where(name: "Pavimentação").first, start_date: "2023-02-02", duration: 1, cost: 15.0, bdi: 0.5,
    executor: Executor.where(name: "Executor da obra").first
  )
end

