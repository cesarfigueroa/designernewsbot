class String
  def truncate(position, omission = '…')
    if self.length > position
      self.slice(0, position).concat(omission)
    else
      self
    end
  end
end
