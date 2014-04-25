require 'digest'

class User < ActiveRecord::Base
  has_many :results

  def generate_token
    hasher = Digest::SHA256.new
    self.token = hasher.hexdigest "#{ Time.new.strftime '%H %M %S %L %9N'} iashdlfkjhasdlkjhiuaweytr"
  end

  def generate_token!
    generate_token
    save!
  end
end
