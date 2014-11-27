class Cliente < ActiveRecord::Base
  has_many :retiros, :dependent => :destroy
  has_many :productos, :through => :retiros

  accepts_nested_attributes_for :retiros

  def name_with_initial
    "#{nombre} #{apellido} - #{direccion}"
  end

  def name_surename
    "#{nombre} #{apellido}"
  end

end
