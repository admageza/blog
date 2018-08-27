json.partial! "feeds/feed", feed: @feed
json.extract! @feed, :id, :name, :created_at, :updated_at
