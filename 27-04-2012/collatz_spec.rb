require './collatz'

describe 'collatz' do
  it 'deve ser igual a 10' do
    collatz(13).should eq(10)
  end

  it 'deve retornar 525' do
    max_collatz.should eq(525)
  end
end


