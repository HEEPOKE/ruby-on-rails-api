require_relative "../models/user_model"

class UserService
  def list_users
    UserModel.all
  end

  def create_user(params)
    user = UserModel.create(params)
    user.reload
  end

  def find_user(id)
    UserModel.find_by(id: id)
  end

  def update_user(user, params)
    user.update(params)
    user.reload
  end

  def delete_user(id)
    user.destroy
  end

end
