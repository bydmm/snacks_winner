class Home
  def snacks
    Snack.in_store?.order(:id)
  end

  def wishes
    Snack.wishes.order(:id)
  end
end
