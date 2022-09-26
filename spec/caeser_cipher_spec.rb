require './lib/script'
describe Caeser do
    describe "#caeser_cipher" do
        it "shifts each letter forward by the requested amount" do
            caeser = Caeser.new
            expect(caeser.caeser_cipher("hello", 2)).to eql("jgnnq")
        end

        it "keeps symbols as is without shift" do
            caeser = Caeser.new
            expect(caeser.caeser_cipher("hello!", 2)).to eql("jgnnq!")
        end

        it "can shift uppercase letters as well" do
            caeser = Caeser.new
            expect(caeser.caeser_cipher("HeLlO!", 2)).to eql("JgNnQ!")
        end

        it "can handle phrases" do
            caeser = Caeser.new
            expect(caeser.caeser_cipher("hello friend!", 2)).to eql("jgnnq htkgpf!")
        end

        it "can shift letters backwards with negative numbers" do
            caeser = Caeser.new
            expect(caeser.caeser_cipher("jgnnq!", -2)).to eql("hello!")
        end

        it "will wrap letters at the end of the alphabet" do
            caeser = Caeser.new
            expect(caeser.caeser_cipher("zello!", 2)).to eql("bgnnq!")
        end
    end
end