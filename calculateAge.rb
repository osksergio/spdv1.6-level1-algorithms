def findAge( current_date, current_month, current_year,
             birth_date, birth_month, birth_year)
  
  # if birth date is greater then current birth_month
  # then donot count this month and add 30 to the date so
  # as to subtract the date and get the remaining days
     
  month =[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  
  if (birth_date > current_date) then
    current_month = current_month - 1
    current_date = current_date + month[birth_month - 1]
  end
         
  # if birth month exceeds current month, then
  # donot count this year and add 12 to the
  # month so that we can subtract and find out
  # the difference
  if (birth_month > current_month) then
    current_year = current_year - 1;
    current_month = current_month + 12;  
  end

  # calculate date, month, year
  calculated_date = current_date - birth_date;
  calculated_month = current_month - birth_month;
  calculated_year = current_year - birth_year;
  
  # print present age
  puts "Present Age "
  
  #puts "Years: " , calculated_year, "Months:", 
  #  calculated_month, "Days:", calculated_date)

  puts "Years: #{calculated_year}  Months: #{calculated_month}  Days: #{calculated_date} ."
end

# driver code
current_date = 29
current_month = 10
current_year = 2021
         
# birth dd//mm//yyyy
birth_date = 06
birth_month = 03
birth_year = 1978
 
findAge(
  current_date, 
  current_month,
  current_year,
  birth_date, 
  birth_month,
   birth_year
  )

