class Student
  attr_accessor :id, :name, :birth_date, :email, :phone_number, :deleted_at

  @@record = []
  @@student_id = 1

  def initialize(name, birth_date, email, phone_number, deleted_at = nil)
    @id = @@student_id
    @name = name
    @birth_date = birth_date
    @email = email
    @phone_number = phone_number
    @deleted_at = deleted_at
  end

  def save
    existing = Student.find(@id)
    if existing
      existing.name = @name
      existing.birth_date = @birth_date
      existing.email = @email
      existing.phone_number = @phone_number
    else
      @@record << self
      @@student_id += 1
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
    puts "\n"
  end

  def self.all
    @@record.select { |student| student.deleted_at.nil? }
  end

  def self.find(id)
    @@record.find { |student| student.id == id }
  end

  def self.find_by_email(email)
    @@record.find { |student| student.email == email }
  end
end