require_relative 'guessing'

describe Guessing_game do

  it "Inputs the secret_word upon initialize" do
    game = Guessing_game.new("Bacon")
    expect(game.secret_word).to eq "Bacon"
  end
  it "Varifies the default value for @guess" do
    game = Guessing_game.new("Bacon")
      expect(game.compare_guess).to eq nil
  end
  it  "Checks the secret_word length" do
    game = Guessing_game.new("Bacon")
      expect(game.secret_word.length). to eq 5
  end

  it "Checks default array value" do
    game = Guessing_game.new("Bacon")
      expect(game.array).to eq ["filler"]
  end
end

