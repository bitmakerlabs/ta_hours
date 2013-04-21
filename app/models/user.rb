class User < ActiveRecord::Base
  rolify
  attr_accessible :name, :provider, :uid

  has_many :hours, class_name: 'OfficeHour'

  def self.create_with_omniauth auth
    create! do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.access_token = auth.credentials.token

      user.add_role :student
    end
  end
end
