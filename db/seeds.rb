[78383, 97020, 253980].each do |id|
  Review.create!(movie_id: id, title: 'TITLE', body: 'body test long text' * 20)
end
