class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # role [1>Admin ]
  before_create :create_group_and_make_user_admin
  belongs_to :group

  def create_group_and_make_user_admin
    if self.group_id.nil?
      group = Group.new
      group.name = self.name
      group.save
      self.group = group
      self.role = 1
    end
  end

  def add_user_to_group(group_id)
    self.group = Group.find(group_id)
    self.save()
  end
end
