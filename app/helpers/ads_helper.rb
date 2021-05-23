module AdsHelper

  def publication_end_range(platform_id)
    p = Platform.find(platform_id)
    if p.daily
      return Date.today + 1
    elsif p.weekly
      return Date.today + 1.week
    elsif p.monthly
      return Date.today + 1.month
    end
  end


end
