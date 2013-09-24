class AddTripFormToPin < ActiveRecord::Migration
  def change
  	add_column :pins, :summary, :text
  	add_column :pins, :budget, :integer
  	add_column :pins, :duration, :integer
  	add_column :pins, :party, :string
  	add_column :pins, :kids, :boolean
  	add_column :pins, :kids_count, :integer
  	add_column :pins, :kids_age, :integer
  	add_column :pins, :transportation, :string
  	add_column :pins, :transportation_arrangement, :text
  	add_column :pins, :tourist_sites, :string
  	add_column :pins, :tourist_sites_description, :text
  	add_column :pins, :non_tourist_site, :string
  	add_column :pins, :non_tourist_site_description, :text
  	add_column :pins, :non_tourist_site_trans, :text
  	add_column :pins, :advice, :text
  	add_column :pins, :comments, :text
  end
end
