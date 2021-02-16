class Myschedule < ApplicationRecord
    validates :title, presence: true
    validates :starttime, presence: true
    validates :endingtime, presence: true
    validates :detail, presence: true
  
end
