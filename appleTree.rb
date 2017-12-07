class AppleTree
    
    attr_accessor :age
    attr_reader :height, :apple
    
    def initialize
        @height = 10
        @apple = 0
        @age = 1
    end

    def year_gone_by
        @age = @age + 1
        @height = @height * 1.1
        if @age > 3 and @age < 11
            @apple = @apple + 2
        end
    end

    def pick_apples
        @apple = 0
    end
           
end