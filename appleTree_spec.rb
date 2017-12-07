require_relative 'appleTree.rb'
RSpec.describe AppleTree do
    before(:each) do
        @tree1 = AppleTree.new()
    end

    it "has a getter and setter for age" do
        @tree1.age = 1
        expect(@tree1.age).to eq(1)
    end

    it "has a getter for height" do
        expect(@tree1.height).to eq(10)
        expect{@tree1.height = 99}.to raise_error(NoMethodError)
    end

    it "has a getter for apple" do
        expect(@tree1.apple).to eq(0)
        expect{@tree1.apple = 99}.to raise_error(NoMethodError)
    end

    context "before 3 years old" do
        it "grow by year year" do
            @tree1.year_gone_by
            expect(@tree1.age).to eq(2)
            expect(@tree1.height).to eq(11)
            expect(@tree1.apple).to eq(0)
            @tree1.year_gone_by
            #tree is now 3 years old
        end
    end
        
    context "between 3 and 7 years old" do
        it "grow to 4 years old" do
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            #tree is now 4 years old
            expect(@tree1.age).to eq(4)
            # expect(@tree1.height).to eq(11)
            expect(@tree1.apple).to eq(2)
        end
    end
        
    context "after 10 years old" do 
        it "grow to 10 years old" do
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            @tree1.year_gone_by
            #tree is now 10 years old
            expect(@tree1.apple).to eq(14)
            @tree1.pick_apples
            expect(@tree1.apple).to eq(0)
            @tree1.year_gone_by
            expect(@tree1.apple).to eq(0)
        end
    end

end
