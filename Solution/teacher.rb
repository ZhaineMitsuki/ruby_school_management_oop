class Teacher
  attr_accessor :id, :name, :birth_date, :email, :phone_number, :department, :deleted_at

  @@record = []
  @@teacher_id = 1

  def initialize(name, birth_date, email, phone_number, department, deleted_at = nil)
    @id = @@teacher_id
    @name = name
    @birth_date = birth_date
    @email = email
    @phone_number = phone_number
    @department = department
    @deleted_at = deleted_at
  end

  def save
    existing = Teacher.find(@id)
    if existing
      existing.name = @name
      existing.birth_date = @birth_date
      existing.email = @email
      existing.phone_number = @phone_number
      existing.department = @department
    else
      @@record << self
      @@teacher_id += 1
    end
  end

  def destroy
    self.deleted_at = Time.now
  end

  def display
    puts "id          : #{id}"
    puts "Name        : #{name}"
    puts "Birth Date  : #{birth_date}"
    puts "Email       : #{email}"
    puts "Phone No.   : #{phone_number}"
    puts "Department  : #{department}"
    puts "\n"
  end

  def self.all
    @@record.select { |teacher| teacher.deleted_at.nil? }
  end

  def self.find(id)
    @@record.find { |teacher| teacher.id == id }
  end

  def self.find_by_email(email)
    @@record.find { |teacher| teacher.email == email }
  end
end