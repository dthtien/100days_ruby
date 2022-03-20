# https://en.wikipedia.org/wiki/Tower_of_Hanoi

def hanoi(height, left = 'left', middle = 'middle', right = 'right')
  if height == 1
    puts "Move disk 1 from #{left} to #{right}"
  else
    hanoi(height - 1, left, right, middle)
    puts "Move disk #{height} from #{left} to #{right}"
    hanoi(height - 1, middle, left, right)
  end
end

hanoi(5)
