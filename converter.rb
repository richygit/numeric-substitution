# encoding: UTF-8

require "nkf"
require 'byebug'

class Converter
  def self.convert(word)
    res = ''
    i = 0
    j = 4 #longest substring length
    while i < word.length do
      substr = word[i, j]
      conversion = KANA_MAP[substr]
      #byebug
      if !conversion.nil?
        res << conversion.to_i.to_s
        i = i + j
        j = 4
      else
        j = j - 1
      end
    end

    return res.to_i
  end

  KANA_MAP = {
    'マル' => 0,
    'マ' => 0,
    'レイ' => 0,
    'レ' => 0,
    'オウ' => 0,
    'ゼロ' => 0,
    'ゼ' => 0,
    'ヒトツ' => 1,
    'ヒト' => 1,
    'ヒ' => 1,
    'イチ' => 1,
    'イ' => 1,
    'ワン' => 1,
    'フタツ' => 2,
    'フタ' => 2,
    'フ' => 2,
    'ニ' => 2,
    'ツ' => 2,
    'ミツ' => 3,
    'ミ' => 3,
    'サン' => 3,
    'サ' => 3,
    'スリー' => 3,
    'ヨン' => 4,
    'ヨ' => 4,
    'ヨツ' => 4,
    'シ' => 4,
    'フォー' => 4,
    'イツツ' => 5,
    'イツ' => 5,
    'ゴ' => 5,
    'コ' => 5,
    'ファイブ' => 5,
    'ファイヴ' => 5,
    'ムツ' => 6,
    'ム' => 6,
    'ロク' => 6,
    'ロ' => 6,
    'シックス' => 6,
    'ナナツ' => 7,
    'ナナ' => 7,
    'ナ' => 7,
    'シチ' => 7,
    'セブン' => 7,
    'セヴン' => 7,
    'ヤツ' => 8,
    'ヤ' => 8,
    'ハチ' => 8,
    'ハ' => 8,
    'バ' => 8,
    'エート' => 8,
    'ココノツ' => 9,
    'コ' => 9,
    'キュウ' => 9,
    'ク' => 9,
    'ナイン' => 9,
    'トオ' => 10,
    'ジュウ' => 10,
    'ジ' => 10,
    'テン' => 10
  }
end

#puts NKF.nkf("-w -h2", "かたかな") # カタカナ

#puts( /\p{Katakana}/ =~ "カタカナ") # 0
#puts( /\p{Katakana}/ =~ "かたかな") # nil

