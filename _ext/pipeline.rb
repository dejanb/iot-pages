require 'bootstrap-sass'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new('/blog')
  extension Awestruct::Extensions::Posts.new('/news', :news)
  extension Awestruct::Extensions::Paginator.new( :posts, '/index', :per_page=>10 )
  extension Awestruct::Extensions::Tagger.new( :posts, '/index', '/blog/tags', :per_page=>10 )
  extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
end
