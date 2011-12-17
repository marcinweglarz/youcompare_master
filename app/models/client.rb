require 'digest'
class Client < ActiveRecord::Base
  has_many :products
  attr_accessor :password
  before_save :encrypt_password

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