require './shiritori_game'

RSpec.describe ShiritoriGame do
  describe '.rule' do
    it 'シリトリのルールが表示される' do
      expect(ShiritoriGame.rule).to eq(puts(%Q|
        すべてカタカナで入力してください
        最後に 'ン' がついたら負けです
        同じ単語を使ったら負けです
      |))
    end
  end
end
