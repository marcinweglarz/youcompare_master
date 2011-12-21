require 'digest'
class Client < ActiveRecord::Base
  has_many :products
  attr_accessor :password
  before_save :encrypt_password

  validates :name, :address, :telephone, :fax, :presence => true
  validates :name, :uniqueness => true
  validates :telephone, :fax, :length => {:within => 11..15}

  validates :email,
            :uniqueness => true,
            :length => {:within => 5..50},
            :format => {:with =>
                            /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}
  validates :password,
            :confirmation => true,
            :length => {:within => 4..20},
            :presence => true

  def self.authenticate(email, password)
    client = find_by_email(email)
    return client if client && client.authenticated?(password)
  end

  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end

  protected
  def encrypt_password
    return if password.blank?
    self.hashed_password = encrypt(password)
  end

  def encrypt(string)
     Digest::SHA1.hexdigest(string)
  end
end