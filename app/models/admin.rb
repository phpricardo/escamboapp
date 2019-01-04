class Admin < ActiveRecord::Base
  # Constantes
  ROLES = {:full_access => 0, :restricted_access => 1}

  # Enums
  enum role: ROLES

  # Scopes
  scope :with_full_access, -> { where(role: ROLES[:full_access]) } # new form
  scope :with_restricted_access, -> { where(role: ROLES[:restricted_access]) } # new form

  # old form of create scope
  # def self.with_full_access
  #   where(role: 'full_access')
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
