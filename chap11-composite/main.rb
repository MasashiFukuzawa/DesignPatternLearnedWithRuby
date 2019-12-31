require './entry'
require './directory'
require './file'

puts 'Making root entries...'
rootdir = Directory.new('root')
bindir  = Directory.new('bin')
tmpdir  = Directory.new('tmp')
usrdir  = Directory.new('usr')
rootdir.add(bindir)
rootdir.add(tmpdir)
rootdir.add(usrdir)
bindir.add(File.new('vi', 10000))
bindir.add(File.new('latex', 20000))
rootdir.print_list

puts ''
puts 'Making user entries...'
yuki   = Directory.new('yuki')
hanako = Directory.new('hanako')
tomura = Directory.new('tomura')
usrdir.add(yuki)
usrdir.add(hanako)
usrdir.add(tomura)
yuki.add(File.new('diary.html', 100))
yuki.add(File.new('Composite.java', 200))
hanako.add(File.new('memo.txt', 300))
tomura.add(File.new('game.doc', 400))
tomura.add(File.new('junk.mail', 500))
rootdir.print_list
