# == Schema Information
#
# Table name: jobs
#
#  id                  :bigint           not null, primary key
#  company_name        :string
#  company_website     :string
#  compensation_range  :string
#  compensation_type   :integer          default("contract")
#  estimated_hours     :string
#  featured            :boolean          default(FALSE)
#  featured_until      :datetime
#  headquarters        :string
#  link_to_apply       :string
#  price               :integer
#  published_at        :datetime
#  remote              :boolean          default(FALSE)
#  slug                :string
#  status              :integer          default("pending")
#  title               :string
#  upsell_type         :string
#  years_of_experience :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint           not null
#
# Indexes
#
#  index_jobs_on_slug     (slug) UNIQUE
#  index_jobs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Job < ApplicationRecord
  # Friendly
  extend FriendlyId
  friendly_id :title, use: :slugged

  # Richtext
  has_rich_text :description
  has_rich_text :company_description

  # ActiveStorage
  has_one_attached :company_logo

  # Association
  belongs_to :user

  # Define status of job using enum
  enum status: { pending: 0, published: 1, archived: 2 }

  # Define compensation type of job using enum
  enum compensation_type: { contract: 0, fulltime: 1 }

  def should_generate_new_friendly_id?
    if !slug?
      title_changed?
    else
      false
    end
  end
end
