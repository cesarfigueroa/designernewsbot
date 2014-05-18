class String
  def truncate(position)
    if self.length > position
      self.slice(0, (position - 1)).concat('…')
    else
      self
    end
  end
end
