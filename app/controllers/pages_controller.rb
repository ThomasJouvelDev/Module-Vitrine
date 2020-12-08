class PagesController < ApplicationController

  def home
    @articles = Article.last(12).reverse
    find_cats
  end

  def categorie
    find_cats
  end

  def showroom
  end

  def services
  end

  def mentionslegales
  end

  def velo
    @articles = []
    find_cat(1)
    @articles.sort_by!(&:created_at).reverse!
  end

  def chaussure
    @articles = []
    find_cat(2)
    @articles.sort_by!(&:created_at).reverse!
  end

  def mobilier
    @articles = []
    find_cat(3)
    find_cat(4)
    find_cat(5)
    find_cat(6)
    @articles.sort_by!(&:created_at).reverse!
    @souscats = []
    @souscats << Category.find_by(id: 3)
    @souscats << Category.find_by(id: 4)
    @souscats << Category.find_by(id: 5)
    @souscats << Category.find_by(id: 6)
  end

  def commode
    @articles = []
    find_cat(3)
    @articles.sort_by!(&:created_at).reverse!
  end

  def table
    @articles = []
    find_cat(4)
    @articles.sort_by!(&:created_at).reverse!
  end

  def bureau
    @articles = []
    find_cat(5)
    @articles.sort_by!(&:created_at).reverse!
  end

  def siege
    @articles = []
    find_cat(6)
    @articles.sort_by!(&:created_at).reverse!
  end

  def poupee
    @articles = []
    find_cat(7)
    @articles.sort_by!(&:created_at).reverse!
  end

  def miroir
    @articles = []
    find_cat(8)
    @articles.sort_by!(&:created_at).reverse!
  end

  def jouet
    @articles = []
    find_cat(9)
    @articles.sort_by!(&:created_at).reverse!
  end

  def deco
    @articles = []
    find_cat(10)
    @articles.sort_by!(&:created_at).reverse!
  end

  private

  def find_cat(id)
    Article.all.each do |a|
      if a.category_id == id
        then @articles.unshift(a)
      end
    end
  end

  def find_cats
    @cats = []
    @cats << Category.find_by(key:'velo')
    @cats << Category.find_by(key:'chaussure')
    @cats << Category.find_by(key:'mobilier')
    @cats << Category.find_by(key:'poupee')
    @cats << Category.find_by(key:'miroir')
    @cats << Category.find_by(key:'jouet')
    @cats << Category.find_by(key:'deco')
  end
end