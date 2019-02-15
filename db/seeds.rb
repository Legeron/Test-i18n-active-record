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

titles = ['LES SEIGNEURS DE DOGTOWN', 'LE MONDE DE NEMO', "LE DISCOURS D'UN ROI"]
texts = ["Dans les années 70, les rues de Dogtown, un quartier de Venice, en Californie,
 sont le territoire d'un groupe de jeunes qui pour la première fois, transposent les plus
 spectaculaires mouvements du surf sur le béton. En peu de temps, les Z-Boys deviennent des légendes.
  Véritables magiciens du skateboard, ils sont à l'origine des sports extrêmes d'aujourd'hui.
   Les compétitions se les arrachent, les filles leur tombent dans les bras. Soudain, tout le monde
    les veut, le sport, le marketing, la pub... Mais dans ce tourbillon qui voit une passion devenir un business
     et des ados se transformer en stars, que vont devenir la flamme, la passion, et l'amitié qui les unit ?",
     "Dans les eaux tropicales de la Grande Barrière de corail, un poisson-clown du nom de Marin mène une existence
     paisible avec son fils unique, Nemo. Redoutant l'océan et ses risques imprévisibles, il fait de son mieux pour
     protéger son fils. Comme tous les petits poissons de son âge, celui-ci rêve pourtant d'explorer les mystérieux
     récifs. Lorsque Nemo disparaît, Marin devient malgré lui le héros d'une quête unique et palpitante. Le pauvre papa ignore
     que son rejeton à écailles a été emmené jusque dans l'aquarium d'un dentiste. Marin ne s'engagera pas seul dans l'aventure :
     la jolie Dory, un poisson-chirurgien bleu à la mémoire défaillante et au grand coeur, va se révéler d'une aide précieuse.
     Les deux poissons vont affronter d'innombrables dangers, mais l'optimisme de Dory va pousser Marin à surmonter toutes ses peurs.",
     "D’après l’histoire vraie et méconnue du père de l’actuelle Reine Elisabeth, qui va devenir, contraint et forcé,
      le Roi George VI (Colin Firth), suite à l’abdication de son frère Edouard VIII (Guy Pearce). D’apparence fragile,
       incapable de s’exprimer en public, considéré par certains comme inapte à la fonction, George VI tentera de surmonter
        son handicap grâce au soutien indéfectible de sa femme (Helena Bonham Carter) et d’affronter ses peurs avec l’aide d’un
        thérapeute du langage (Geoffrey Rush) aux méthodes peu conventionnelles. Il devra vaincre son bégaiement pour assumer
        pleinement son rôle, et faire de son empire le premier rempart contre l’Allemagne nazie."]


Article.destroy_all
Translation.destroy_all

a1 = Article.create(author: 'Alex', title: 'title', text: 'body' )
a2 = Article.create(author: 'Bob', title: 'title_article1', text: 'body_article1' )
a3 = Article.create(author: 'Jean', title: 'title_article2', text: 'body_article2' )


t1 = Translation.create(locale: 'en', key: 'title', value: 'Title', alias: 'page1')
t2 = Translation.create(locale: 'fr', key: 'title', value: titles[0], alias: 'page1' )
t3 = Translation.create(locale: 'en', key: 'title_article1', value: 'Title 1', alias: 'page2' )
t4 = Translation.create(locale: 'fr', key: 'title_article1', value: titles[1], alias: 'page2' )
t5 = Translation.create(locale: 'en', key: 'title_article2', value: 'Title 2', alias: 'page3' )
t6 = Translation.create(locale: 'fr', key: 'title_article2', value: titles[2], alias: 'page3' )
t7 = Translation.create(locale: 'en', key: 'body', value: 'This is a test to see if it works', alias: 'page1')
t8 = Translation.create(locale: 'fr', key: 'body', value: texts[0], alias: 'page1')
t9 = Translation.create(locale: 'en', key: 'body_article1', value: 'This is article 1', alias: 'page2' )
t10 = Translation.create(locale: 'fr', key: 'body_article1', value: texts[1], alias: 'page2' )
t11 = Translation.create(locale: 'en', key: 'body_article2', value: 'Test Body 2', alias: 'page3' )
t12 = Translation.create(locale: 'fr', key: 'body_article2', value: texts[2], alias: 'page3')



