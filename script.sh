term_width=`tput cols`
echo $term_width
file_width=200
test_width=200
while [ $test_width -gt 80 ]
do
  if [ $term_width -gt $test_width ]
  then
    file_width=$test_width
    test_width=80
  else
    test_width=$[$test_width-20]
  fi
done

echo $file_width

