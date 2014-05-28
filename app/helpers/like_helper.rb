module LikeHelper
  def heart_icon(snack, user)
    if Like.find_by(snack: snack, user: user).present?
      'fa fa-heart'
    else
      'fa fa-heart-o'
    end
  end
end
