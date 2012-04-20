class Pessoa

  attr_accessor :pais, :nome, :idade

  def initialize nome, idade, pais
    @nome = nome
    @idade = idade
    @pais = pais
  end

  def pode_dirigir?

    return true unless ["BR", "US"].include? @pais

    if (@idade >= 18 && @pais=="BR")
      true
    elsif (@idade >=16 && @pais=="US")
       true
     else
      false
    end
  end

  def pode_beber?
     if(@idade >= 18)
         true
       else
        false
      end
  end
end
