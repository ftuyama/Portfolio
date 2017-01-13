require 'digest'
class User < ActiveRecord::Base
  attr_accessor :password

  validates :username,  :uniqueness => true,
                        :length => { :within => 5..30 },
                        :presence => true
  validates :name,  :uniqueness => true,
                    :length => { :within => 5..30 },
                    :presence => true
  validates :password,  :confirmation => true,
                        :length => { :within => 3..20 },
                        :presence => true,
                        :if => :password_required?
  has_many :projects

  before_save :encrypt_new_password

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    return user if user && user.authenticated?(password)
  end

  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end

  protected
    def encrypt_new_password
      return if password.blank?
      self.hashed_password = encrypt(password)
    end

    def password_required?
      hashed_password.blank? || password.present?
    end

    def encrypt(string)
      Digest::SHA1.hexdigest(string)
    end
end
