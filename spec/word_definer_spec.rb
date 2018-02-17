require('rspec')
require('pry')
require('word_definer')

describe("Word")do

  before() do
    Word.clear()
  end

  describe(".all") do
    it("is empty at first, and will populate later") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save_word") do
    it("saves a new word") do
      new_word = Word.new("frog")
      new_word.save()
      expect(Word.all()).to(eq([new_word]))
    end
  end

  describe("#save_definition") do
    it("adds a definition") do
      new_word = Word.new("frog")
      new_word.save()
      expect(new_word.save_definition("a slimy toad")).to(eq(["a slimy toad"]))
    end
  end

  describe("#save_definition") do
    it("adds another definition") do
      new_word = Word.new("frog")
      new_word.save()
      new_word.save_definition("a slimy toad")
      expect(new_word.save_definition("long leg water jumper")).to(eq(["a slimy toad", "long leg water jumper"]))
    end
  end

  describe("#call_definitions") do
    it("calls a list of current definition") do
      new_word = Word.new("frog")
      new_word.save()
      new_word.save_definition("a slimy toad")
      new_word.save_definition("long leg water jumper")
      expect(new_word.call_definitions()).to(eq([new_word]))
    end
  end

  describe(".find") do
    it("finds an item based on id") do
      new_word = Word.new("frog")
      new_word.save()
      next_word = Word.new("camel")
      next_word.save()
      last_word = Word.new("pollywog")
      last_word.save()
      expect(Word.find(1)).to(eq(1))
      expect(Word.find(2)).to(eq(2))
    end
  end

  describe(".find_by_word") do
    it("finds an item based on id") do
      new_word = Word.new("frog")
      new_word.save()
      next_word = Word.new("camel")
      next_word.save()
      last_word = Word.new("pollywog")
      last_word.save()
      expect(Word.find_by_word("frog")).to(eq("frog"))
      expect(Word.find_by_word("camel")).to(eq("camel"))
    end
  end

end
