class Admin < ActiveRecord::Base
  enum role: [:full_access, :restricted_access]

  scope :with_full_access, -> { where(role: 'full_access') } # new form

  # old form of create scope
  # def self.with_full_access
  #   where(role: 'full_access')
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
