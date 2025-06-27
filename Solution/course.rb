class Course
  attr_accessor :id, :name, :deleted_at

  @@record = []
  @@course_id = 1

  def initialize(name, deleted_at = nil)
    @id = @@course_id
    @name = name
    @deleted_at = deleted_at
  end

  def save
    existing = Course.find(@id)
    if existing
      existing.name = @name
    else
      @@record << self
      @@course_id += 1
    end
  end

  def destroy
    self.deleted_at = Time.now
  end

  def display
    puts "id          : #{id}"
    puts "Name        : #{name}"
    puts "\n"
  end

  def self.all
    @@record.select { |course| course.deleted_at.nil? }
  end

  def self.find(id)
    @@record.find { |course| course.id == id }
  end
end