class Subject
  attr_accessor :id, :name, :deleted_at

  @@record = []
  @@subject_id = 1

  def initialize(name, deleted_at = nil)
    @id = @@subject_id
    @name = name
    @deleted_at = deleted_at
  end

  def save
    existing = Subject.find(@id)
    if existing
      existing.name = @name
    else
      @@record << self
      @@subject_id += 1
    end
  end

  def destroy
    self.deleted_at = Time.now
  end

  def self.all
    @@record.select { |subject| subject.deleted_at.nil? }
  end

  def self.find(id)
    @@record.find { |course| course.id == id }
  end
end