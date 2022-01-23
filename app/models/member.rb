class Member < ApplicationRecord
    validates :scoutnummer, presence: true
end
