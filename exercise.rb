class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    words = str.split
    updatedWords = Array.new

    words.each do |word|
      # Take care of punctuation:
      # [0] is the word
      # [1] if it exists is the punctuation
      splitWord = word.scan(/[\w]+|[.,!?]+/)

      # Check if word needs to be replaced
      if splitWord[0].length > 4
        if splitWord[0][0] == splitWord[0][0].upcase
          splitWord[0] = 'Marklar'
        else
          splitWord[0] = 'marklar'
        end
      end

      # Rejoin word and punctuation and add word to the array
      updatedWord = splitWord.join('')
      updatedWords.push(updatedWord)
    end

    updatedWords.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    evenSum = 0

    for i in 3...nth do
      fibNum = fibonacci_helper(i)
      if fibNum % 2 == 0
        evenSum += fibNum
      end
    end

    return evenSum
  end

  def self.fibonacci_helper(n)
    if n == 1 || n == 2
      return 1
    else
      return fibonacci_helper(n - 1) + fibonacci_helper(n - 2)
    end
  end

end
