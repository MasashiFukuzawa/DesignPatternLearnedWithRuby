require './factory'
require './listfactory'

factory = Factory::Factory.new.get_factory('ListFactory')

asashi  = factory.create_link('朝日新聞', 'https://www.asashi.com')
yomiuri = factory.create_link('読売新聞', 'https://www.yomiuri.co.jp')

us_yahoo = factory.create_link('Yahoo!', 'https://www.yahoo.com')
jp_yahoo = factory.create_link('Yahoo!Japan' 'https://www/yahoo.co.jp')
excite   = factory.create_link('Excite', 'https://www.excite.com')
google   = factory.create_link('Google', 'https://www.google.com')

traynews = factory.create_tray('新聞')
traynews << us_yahoo
traynews << yomiuri

trayyahoo = factory.create_tray('Yahoo')
trayyahoo << us_yahoo
trayyahoo << jp_yahoo

traysearch = factory.create_tray('サーチエンジン')
traysearch << trayyahoo
traysearch << excite
traysearch << google

page = factory.create_page('LinkPage', '鈴木 一郎')
page << traynews
page << traysearch
page.output
