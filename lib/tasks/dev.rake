namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando os contatos"
    100.times do |i|
      Contact.create!(
        name:Faker::Name.name ,
        email:Faker::Internet.email,
        birthdate:Faker::Date.between(from: '1950-09-23', to: '2000-09-25')
      )
    end
    puts "Contatos cadastrados com sucesso"
  end

end
