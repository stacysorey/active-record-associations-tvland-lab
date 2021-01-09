class Show < ActiveRecord::Base
  # a show has many characters and has many actors through characters
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # Show has an #actors_list method that returns a list of the full names of each actor associated with the show
    self.actors.collect {|actor| actor.full_name}
  end
  
end