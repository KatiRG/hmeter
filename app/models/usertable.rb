# == Schema Information
#
# Table name: usertables
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  mood       :string(255)
#  created_at :datetime
#  updated_at :datetime



class Usertable < ActiveRecord::Base
  belongs_to :user
end
