CATEGORIES = [
  {key: :velo, url: 'https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1308&q=80' },
  {key: :chaussure, url: 'https://images.unsplash.com/photo-1578021046026-483fa99ffad2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'},
  {key: :mobilier, url: 'https://images.unsplash.com/photo-1503602642458-232111445657?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80' },
  {key: :poupee, url: 'https://images.unsplash.com/photo-1599405655731-9158c296bbb9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80' },
  {key: :miroir, url: 'https://images.unsplash.com/photo-1560828343-a0b3d8864d1b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=873&q=80' },
  {key: :jouet, url: 'https://images.unsplash.com/photo-1580312766268-634287b19634?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80' },
  {key: :deco, url: 'https://images.unsplash.com/photo-1583858995136-0d7d2dfc6696?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=982&q=80' }
].freeze

CATEGORIES_ID = {
   1 => [:velo],
   2 => [:chaussure],
   3 => [:mobilier, :commode],
   4 => [:mobilier, :table],
   5 => [:mobilier, :bureau],
   6 => [:mobilier, :siege],
   7 => [:poupee],
   8 => [:miroir],
   9 => [:jouet],
   10 => [:deco]
}

CATEGORIES_MOBILIER = [
  {key: :commode, url:'https://images.unsplash.com/photo-1568506759587-2051680b0257?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80'},
  {key: :table, url: 'https://images.unsplash.com/photo-1513792117172-ef6bc78042c1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80'},
  {key: :bureau, url: 'https://images.unsplash.com/photo-1526887593587-a307ea5d46b4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=934&q=80'},
  {key: :siege, url: 'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1001&q=80'}
].freeze 

INFOS = {
  societe: "Thomas Jouvel Dev",
  siege: "Showroom / Magasin Thomas Jouvel Dev",
  adresse: "3 Rue des Fraisiers, Chaponost 69630",
  email: "votre@email.fr",
  tel: "06 43 16 32 47",
  insta: "#",
  nom: "Mr. Thomas JOUVEL",
  site: "www.module-vitrine.fr",
  RCS: "RCS LYON - XXX XXX XXX",
  TVA: "FRXXXXXXX",
  SIRET: "XXXXXXXXXXXX"
}.freeze