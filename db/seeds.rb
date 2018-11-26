# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(last_name: '奈津',
            first_name: '恵',
            sex: 1,
            birth_of_day: '2003-11-02',
            postal_code: 1_234_567,
            address: '木組みの家と石畳の街３−２−１',
            comment: '前回ご来店時に筆箱をお忘れです。レジ横ストレージからお渡ししてください',
            blacklist: false)
