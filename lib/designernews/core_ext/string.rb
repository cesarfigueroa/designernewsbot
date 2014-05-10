class String
  def truncate(position)
    if self.length > position
      self.slice(0, position).concat('…')
    else
      self
    end
  end
end
