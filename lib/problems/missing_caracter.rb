class MissingCaracter
  def self.check(phrase)
    alphabet = ('a'..'z').to_a

    phrase.downcase.split('').each do |i|
      alphabet.delete(i) if alphabet.include?(i)
    end

    if alphabet.empty?
      'It is'
    else
      "It's not"
    end
  end
end

puts MissingCaracter.check('Lorem ipsum missing caracter')