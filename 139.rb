def completed_years (bd, d)
    # Difference in years, less one if you have not had a birthday this year.
    a = d.year - bd.year
    a = a - 1 if (
         bd.month >  d.month or 
        (bd.month >= d.month and bd.day > d.day)
    )
    a
end


File.open('139.txt').each_line do |line|
  work = line.split(';').map {|a| a.split('-')}
  year = [0,0]
  selected = work.map{|a,b| [a.split(' '),b.split(' ')] }
  0.upto selected.length - 1 do |i|
    start = selected[i][0]
    finish = selected[i][1]
    start = Time.utc(start[1].to_i,start[0].downcase!)
    finish = Time.utc(finish[1].to_i,finish[0].downcase!)
    year[1] += completed_years(start,finish)
  end

  
end    
    
    
