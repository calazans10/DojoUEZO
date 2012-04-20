require './pessoa'

describe 'pessoa' do

  it "deve inicializar corretamente" do
    pessoa = Pessoa.new "Elias", 23, "BR"
    pessoa.nome.should eq("Elias")
    pessoa.idade.should eq(23)
    pessoa.pais.should eq("BR")
  end

  it "deve verificar cnh para brasil" do
    pessoa = Pessoa.new "Fulano", 17, "BR"
    pessoa.pode_dirigir?.should eq(false)
    pessoa.idade = 20
    pessoa.pode_dirigir?.should eq(true)
  end
  it "deve verificar USA " do
    pessoa = Pessoa.new "Julio", 10, "US"
    pessoa.pode_dirigir?.should eq(false)
    pessoa.idade = 16
    pessoa.pode_dirigir?.should eq(true)

  end
  it "deve poder dirigir para qualquer pais desconhecido" do
    pessoa = Pessoa.new "Gilberto", 40, "JJ"
    pessoa.pode_dirigir?.should eq(true)
  end

  it "deve poder beber para maiores de idade" do

      pessoa = Pessoa.new "Yoseph",19,"BR"
      pessoa.pode_beber?.should eq(true)

  end
end
