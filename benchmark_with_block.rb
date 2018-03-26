def benchmark(&block)
  start_time = Time.now
  block.call
  end_time = Time.now
  puts "It took #{end_time - start_time} seconds to run"
end

# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000

benchmark { long_string.reverse }


long_string2 = "apple"*200000000

benchmark { long_string2.reverse }

long_string3 = "apple"*100000000+"banana"

benchmark { long_string3.reverse }

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

benchmark { fibonacci( 10 ) }
