class Pin < ActiveRecord::Base
  attr_accessible :headline, :image, :image_remote_url, :summary, :budget,
    :duration, :party, :kids, :kids_count, :kids_age, :transportation, :transportation_arrangement,
    :tourist_sites, :tourist_sites_description, :non_tourist_site, :non_tourist_site_description,
    :non_tourist_site_trans, :advice, :comments
  has_attached_file :image, styles: { medium: "320x240>" }
  
  validates :headline, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  validates :summary, presence: true
  validates :budget, presence: true
  validates :duration, presence: true
  validates :party, presence: true
  validates_inclusion_of :kids, :in => [true, false]
  validates :kids_count, presence: true, if: :kids?
  validates :kids_age, presence: true, if: :kids?
 

  belongs_to :user

  def kids?
    :kids==true
  end

  def image_remote_url=(url_value)
  	self.image = URI.parse(url_value) unless url_value.blank?
  	super
	end	
end
