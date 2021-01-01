# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE)
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  developer              :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  employer               :boolean          default(FALSE)
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  moderator              :boolean
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#
class User < ApplicationRecord
  # Add simple forum discussio
  include SimpleDiscussion::ForumUser

  # Friendly
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Name of user
  has_person_name

  # Association
  has_many :jobs, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  def name
    "#{first_name} #{last_name}"
  end

  def should_generate_new_friendly_id?
    if !slug?
      first_name_changed? || last_name_changed?
    else
      false
    end
  end
end
