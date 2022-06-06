require "test_helper"

class FormatStringTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FormatString::VERSION
  end

  def test_it_does_something_useful
    assert true
  end
end



RSpec.describe MyFirstGem01 do
  it "has a version number" do
    expect(MyFirstGem01::VERSION).not_to be nil
  end

  #it "does something useful" do
  #  expect(false).to eq(true)
  #end

  it "Teste para a formatação em Real" do
    expect(MyFirstGem01::Moeda.br(2)).to eq("R$ 2")
  end

  it "Teste para a formatação em Dólar" do
    expect(MyFirstGem01::Moeda.en(3)).to eq("$ 3")
  end
end
