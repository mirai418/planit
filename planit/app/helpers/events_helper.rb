module EventsHelper
  def format_time t
    t.localtime.strftime("%H:%M")
  end

  def format_date d
    d.localtime.strftime("%a %b %d %Y")
  end
end
