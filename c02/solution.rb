KEYBOARD = ['1', 'ABC2', 'DEF3',
            'GHI4', 'JKL5', 'MNO6',
            'PQRS7', 'TUV8', 'WXYZ9',
            '*', ' 0', '#', ]

def button_presses(message)
  sum = 0
  message.each_char do |character|
    button = KEYBOARD.find { |button| button.include? character.upcase }
    button.each_char do |symbol|
      sum += 1
      break if symbol == character.upcase
    end
  end
  sum
end
