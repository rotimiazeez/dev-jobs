class Job < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = %w[Full-time Part-time Contract Freelance].freeze
end
