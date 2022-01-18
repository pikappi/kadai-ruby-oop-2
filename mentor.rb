class Mentor
  # インスタンス変数
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  # self.name として呼ばれるが、実際には Slime や Hero の name が呼び出される。
  # この name は呼び出されないので、 '' を返すだけにしている。
  #def name
  #  ''
  #end

  def job
    puts "#{self.name}です。私は現役のITプロフェッショナルです。"
  end
end

class RailsMentor < Mentor
  def job
    puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります。"
  end
end

kirameki = Mentor.new('煌木')
akaide = RailsMentor.new('赤出')

kirameki.job
akaide.job