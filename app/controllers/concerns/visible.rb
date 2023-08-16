# Concern module to hide or show articles / comments
module Visible
  extend ActiveSupport::Concern

  # VALID_STATUSES = ['public', 'private', 'archived']
  VALID_STATUSES = %w[public private archived].freeze

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
