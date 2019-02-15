# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  # create_table "translations", force: :cascade do |t|
  #   t.string "locale"
  #   t.string "key"
  #   t.text "value"
  #   t.text "interpolations"
  #   t.boolean "is_proc", default: false
Translation.create(locale: 'en', key: 'body', value: 'This is a test to see if it works')
Translation.create(locale: 'fr', key: 'body', value: 'Test en français')
