# frozen_string_literal: true

def libraryFine(d1, m1, y1, d2, m2, y2)
  fine = 0
  fine = 15 * (d1 - d2) if d1 > d2 && m1.eql?(m2) && y1.eql?(y2)
  fine = 500 * (m1 - m2) if m1 > m2 && y1.eql?(y2)
  fine = 10_000 * (y1 - y2) if y1 > y2

  fine
end
