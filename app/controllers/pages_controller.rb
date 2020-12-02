class PagesController < ApplicationController
  def find_cat(id)
    Article.all.each do |a|
      if a.category_id == id
        then @articles.unshift(a)
      end
    end
  end

  def home
    @articles = Article.last(12).reverse
  end

  def categorie
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

end