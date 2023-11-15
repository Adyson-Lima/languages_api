class Language < ApplicationRecord
  validates :name, :framework, presence: true
end
