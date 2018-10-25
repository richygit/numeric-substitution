require_relative '../converter'

describe Converter do
  it 'should convert the examples properly' do
    expect(Converter.convert('ヨロシク')).to eq(4649)
    expect(Converter.convert('イヤナヤツ')).to eq(1878)
    expect(Converter.convert('ハヤク')).to eq(889)
    expect(Converter.convert('ナゴヤ')).to eq(758)
    expect(Converter.convert('クサイ')).to eq(931)
    expect(Converter.convert('サイゴ')).to eq(315)
    expect(Converter.convert('サンキュウ')).to eq(39)
  end
end
