class Actor < ActiveRecord::Base
  validates :image_url, :name, :bio, :birth_date, :birth_place, presence: true
  validates :death_date, :death_place, presence: true, if: :is_dead?

  def is_dead?
    if alive == "0"
      false
    else
      true
    end
  end
end
