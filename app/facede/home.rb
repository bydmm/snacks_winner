class Home
  def inventories
    Inventory.order(:id)
  end

  def wishes
    Wish.order(:id)
  end

  def finishes
    Finish.order(:id)
  end
end
