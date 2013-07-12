module ApplicationHelper

  def nl2br(string)
    string.gsub("\n\r","<br>").gsub("\r", "").gsub("\n", "<br />")
  end

end
