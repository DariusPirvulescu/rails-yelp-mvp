class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, :inclusion => { :in => ['chinese', 'italian', 'japanese', 'french', 'belgian'] }

  
  def as_json(options={})
    { 
      :name => self.name,
      :phone_number => self.phone_number,
      :category => self.category
    }
  end
end
