require './sample_directory'
require './sample_file'
require './list_visitor'
require './file_find_visitor'

puts 'Making root entries...'
rootdir = SampleDirectory.new('root')
bindir = SampleDirectory.new('bin')
tmpdir = SampleDirectory.new('tmp')
usrdir = SampleDirectory.new('usr')
rootdir.add(bindir)
rootdir.add(tmpdir)
rootdir.add(usrdir)
bindir.add(SampleFile.new('vi', 10000))
bindir.add(SampleFile.new('latex', 20000))
rootdir.accept(ListVisitor.new)

puts ''
puts 'Making user entries...'
yuki = SampleDirectory.new('yuki')
hanako = SampleDirectory.new('hanako')
tomura = SampleDirectory.new('tomura')
usrdir.add(yuki)
usrdir.add(hanako)
usrdir.add(tomura)
yuki.add(SampleFile.new('diary.html', 100))
yuki.add(SampleFile.new('Composite.java', 200))
hanako.add(SampleFile.new('memo.txt', 300))
tomura.add(SampleFile.new('game.doc', 400))
tomura.add(SampleFile.new('junk.mail', 500))
rootdir.accept(ListVisitor.new)

rootdir.accept(FileFindVisitor.new('html'))
