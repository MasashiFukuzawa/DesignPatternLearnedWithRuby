require './factory/factory'
require './factory/item'
require './factory/link'
require './factory/tray'
require './factory/page'
require './list_factory/list_factory'
require './list_factory/list_link'
require './list_factory/list_tray'
require './list_factory/list_page'
require './table_factory/table_factory'
require './table_factory/table_link'
require './table_factory/table_tray'
require './table_factory/table_page'

class Main
  def main(classname, filename)
    factory = Factory.new.factory(classname)

    asashi = factory.create_link('朝日新聞', 'https://www.asashi.com')
    yomiuri = factory.create_link('読売新聞', 'https://www.yomiuri.co.jp')

    us_yahoo = factory.create_link('Yahoo!', 'https://www.yahoo.com')
    jp_yahoo = factory.create_link('Yahoo!Japan', 'https://www/yahoo.co.jp')
    excite = factory.create_link('Excite', 'https://www.excite.com')
    google = factory.create_link('Google', 'https://www.google.com')

    traynews = factory.create_tray('新聞')
    traynews.add(us_yahoo)
    traynews.add(yomiuri)

    trayyahoo = factory.create_tray('Yahoo')
    trayyahoo.add(us_yahoo)
    trayyahoo.add(jp_yahoo)

    traysearch = factory.create_tray('サーチエンジン')
    traysearch.add(trayyahoo)
    traysearch.add(excite)
    traysearch.add(google)

    page = factory.create_page(filename, '鈴木 一郎')
    page.add(traynews)
    page.add(traysearch)
    page.output
  end
end

Main.new.main(ListFactory, 'list_factory')
Main.new.main(TableFactory, 'table_factory')
