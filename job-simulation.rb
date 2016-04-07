require './Stack.rb'
require './Queue.rb'

class CrappyJob
  attr_reader :waiting, :workers

  def initialize
    @waiting = Queue.new
    @workers = Stack.new
  end

  # method to add people to the waiting list queue
  def wait_list(num)
    # num.downto(1).each do |n|
    (1..num).each do |n|
      @waiting.enqueue(n)
    end
    # test
    puts "First wait list #{waiting.store}"
  end

  # method to hire the first 6 people who entered wait_list queue
  def hire(num)
    num.times do |n|
      employee = @waiting.store.last
      @waiting.dequeue
      @workers.push(employee)
    end
    # test
    # puts "second wait list #{waiting.store}"
    # puts "first workers list #{workers.store}"
  end

  # method to fire a random number of people
  def fire
    num = rand(1..workers.size)
    puts "NUM YO #{num}"
    num.times do
      employee = @workers.store.last
      @workers.pop
      @waiting.enqueue(employee)
    end
    # test
    # puts "third wait list #{waiting.store}"
    # puts "second workers list #{workers.store}"
  end
end

# make crappy job instance
company = CrappyJob.new 
# add 10 people to the wait list queue
company.wait_list(10)
# hire the first 6 people on the waiting list
company.hire(6)
# fire random amount of people from workers
company.fire



