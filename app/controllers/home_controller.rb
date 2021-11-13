class HomeController < ApplicationController
  before_action :settleSabors
  before_action :settleAdm
  def index
  end

  def settleSabors
    if !Sabor.all.any?
      sabor1 = Sabor.new(nome: 'Calabresa', preco: 20.5)
      sabor1.save
      sabor2 = Sabor.new(nome: 'Quatro Queijos', preco: 20.5)
      sabor2.save
      sabor3 = Sabor.new(nome: 'Peperone', preco: 18.80)
      sabor3.save
      sabor4 = Sabor.new(nome: 'Bacon', preco: 22.50)
      sabor4.save
      sabor4 = Sabor.new(nome: 'Frango com Cheddar', preco: 21.30)
      sabor4.save
    end
  end
  def settleAdm
    if !User.all.any?
      adm = User.new(email: "adm@adm",cpf: "12345678978", password: "123456", nome: "adm", telefone: "0800", adm: true)
      adm.save
    end
  end
end
