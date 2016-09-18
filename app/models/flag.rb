class Flag < ApplicationRecord
  has_many :flag_colors
  has_many :colors, through: :flag_colors
  validates :country, presence: true
  validates :num_of_colors, numericality: {greater_than: 0}


  validate :url_valid


  def url_valid?
    if self.img_url =~ /\A#{URI::regexp(['http', 'https'])}\z/

      errors.add(:img_url, "That is not a valid image url.")
    end
    https://.gifupload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.gif
  end


  def num_of_colors=(colors)
    self.colors.size
  end
end
