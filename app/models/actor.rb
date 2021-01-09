class Actor < ActiveRecord::Base
  #has many characters and has many shows through characters
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #actor can list its full name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #actor can list all of its shows and characters
    characters.collect {|character| "#{character.name} - #{character.show.name}"}
  end

end