# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.create([
    { name: '洋画' },
    { name: '邦画' },
    { name: 'アクション' },
    { name: '冒険' },
    { name: 'アニメーション' },
    { name: '伝記' },
    {name: 'コメディ' },
    { name: '犯罪'},
    { name: 'ドキュメンタリー'},
    { name: 'ドラマ'},
    { name: 'ファミリー'},
    { name: 'ファンタジー'},
    { name: 'フィルムノワール'},
    { name: '歴史'},
    { name: 'ホラー'},
    { name: '音楽'},
    { name: 'ミュージカル'},
    { name: 'ミステリー'},
    { name: 'ロマンス'},
    { name: 'SF'},
    { name: '短編'},
    { name: 'スポーツ'},
    { name: 'スリラー'},
    { name: '戦争'},
    { name: '西部劇'}
])