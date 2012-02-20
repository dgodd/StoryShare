class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  def to_s
    email
  end

  def self.find_for_facebook_oauth(access_token, signed_in_resource = nil)
    data = access_token.extra.raw_info
    User.where(:facebook_id => data.id).first
  end

  def self.find_for_twitter_oauth(access_token, signed_in_resource = nil)
    data = access_token
    User.where(:twitter_id => data.uid).first
  end

  def self.find_for_google_oauth(access_token, signed_in_resource = nil)
    data = access_token
    User.where(:google_id => data.uid).first
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.facebook_id = data["id"]
      elsif data = session["devise.twitter_data"]
        user.twitter_id = data["uid"]
      elsif data = session["devise.google_data"]
        Rails.logger.fatal data.to_json
        user.google_id = data["uid"]
      end
      # TODO: add other providers
    end
  end

  def connect_with provider, authdata
    case provider
    when :twitter
      self.twitter_id = authdata['uid']
    when :facebook
      self.facebook_id = authdata['uid']
    when :google
      self.google_id = authdata['uid']
    end
    save
  end
end
