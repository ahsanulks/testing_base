class User
  @@id = 0
  def initialize(nama)
    @nama = nama
    @@id += 1
    @id = @@id
  end

  def id
    @id
  end

  def nama
    @nama
  end
end
