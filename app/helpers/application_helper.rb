module ApplicationHelper
  def rss_title(i)
    @feed.entries[i]["title"].slice(11,100)
  end

  def rss_updated(i)
    @feed.entries[i]["updated"].strftime("%m/%d/%Y")
  end

  def rss_url(i)
    @feed.entries[i]["url"]
  end
end
