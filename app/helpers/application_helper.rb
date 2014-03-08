module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Manalist"      
    end
  end
end
