class Word

  @@word_list = []

  attr_accessor :word, :definiton_list

  def initialize(word)
    @word = word
    @defintion_list = []
  end

  def self.clear()
    @@word_list = []
    @definiton_list = []
  end

  def self.all()
    @@word_list
  end

  def save()
    @@word_list.push(self)
  end

  def save_definition(definition)
    # binding.pry
    @defintion_list.push(definition)
  end

  def call_definitions()

  end

end
