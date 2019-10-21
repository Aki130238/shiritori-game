class ShiritoriGame
  attr_accessor :player_name, :histories

  def initialize(player_name:)
    @player_name = player_name
    @histories = []
  end

  def self.rule
    rule_text = ''
    rule_text << "すべてカタカナで入力してください\n"
    rule_text << "最後に 'ン' がついたら負けです\n"
    rule_text << "同じ単語を使ったら負けです\n"
    rule_text
  end

  def self.all_words
    ["リンゴ", "ゴリラ", "ラッパ", "パリ"]
  end

  def start
    "\\_o< Hi, #{@player_name}. Let's enjoy shiritori game\n"
  end

  def computer_attack
    if self.class.all_words.include?(histories.last)
      self.class.all_words.each do |word|
        if word[0] == histories.last[-1]
          return word
        else
          nil
        end
      end 
    else
      nil
    end
  end
end
