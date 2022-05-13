# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C",
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

# <10 books => D, 10..20 books => C, >20 book =>B
require 'benchmark'


def grade(num_books, has_read_books)
  Benchmark.bm(20) do |bm|
    bm.report("My Version") do
      grades = {0 => 'D', 1 => 'C', 2 => 'B', 3 => 'A'}
      case num_books
        when num_books = 0..9
          grade_count = 0
        when num_books = 10..20
          grade_count = 1
        else
          grade_count = 2
      end
      if has_read_books == true
        grade_count += 1
      end
      grades[grade_count]
    end
  end
end
