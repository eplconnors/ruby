class Student
  attr_reader :name, :email
  attr_accessor :password
  def initialize (name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def greeting
    puts "Hello #{@name}! Welcome to your test!"
  end

  def email_login
    puts "Please enter your email"
    user_email = gets.chomp.downcase
    if user_email != @email
      puts "email incorrect, please try again"
      email_login
    elsif user_email == @email
      password_login
    end
  end

  def password_login
    puts "Please enter your password (please inlcude at least one number)"
    user_password = gets.chomp.to_s
    if user_password != @password
      puts "password is incorrect, please try again"
      password_login
    elsif user_password == @password
      test
    end
  end

  def test
    @score = []
    puts "Who does Zack go out with to get Kelly jealous?"
    answer1= gets.chomp.downcase
    if answer1 == "screech's cousin"
      @score<<20
    end
    puts "Where did Mrs. Belding have her baby?"
    answer2 = gets.chomp.downcase
    if answer2 == 'elevator'
      @score<<20
    end
    puts "What was the name of the guy Kelly dumped Zach for?"
    answer3=gets.chomp.downcase
    if answer3 == "jeff"
      @score<<20
    end
    puts "What is Screechs full name on the Show?"
    answer4 = gets.chomp.capitalize
    if answer4 == "Samuel Powers"
      @score<<20
    end
    puts "What is the name of the restaurant everyone hangs out in?"
    answer5 = gets.chomp.downcase
    if answer5 == 'the max'
      @score<<20
    end
    score_tally
  end

    def score_tally
    grade = @score.reduce(:+)
    puts "Your got a score of #{grade.to_i}"
    if grade >= 60
      puts "Congratulations! You've passed the test!"
    elsif grade < 60
      puts "I'm sorry, you did not pass. Please take the test again."
      test
    end
  end

  def start
    greeting
    email_login
  end

end

student_account=Student.new('Emily Connors', 'eplebel@gmail.com','bhi5408')
student_account.start
