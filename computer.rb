class Computer
    @@users = {}
    
    def initialize (username,password)
        @username = username
        @password = password
        @@users[username] = password
    @files = {}
    end
    
    def create(filename)
    time=Time.now
    @files[filename]=time
    puts "#{@files[filename]} was created by #{@username} at #{time}"
    end
    
    def self.get_users
        return @@users
    end
end

my_computer = Computer.new("aws784","foo")
my_computer.create("File1")
Computer.get_users