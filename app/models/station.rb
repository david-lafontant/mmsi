class Station < ApplicationRecord
  validates :category, presence: true, length: { in: 6..20, message: "invalid format" }, format: { with: /\A[a-zA-Z0-9]\w+\z/,
    message: "invalid format" }
end
