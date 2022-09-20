class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
  enum category: {
    chinese: 'ch',
    italian: 'it',
    japanese: 'ja',
    belgian: 'be'
  }

  # Used by to_json to only return the some chosen attributes
  # https://api.rubyonrails.org/classes/ActiveModel/Serializers/JSON.html#method-i-as_json
  def as_json(options={})
    {
      name: self.name,
      phone_number: self.phone_number,
      category: self.category
    }
    # super(:only => [:name])
  end
end
