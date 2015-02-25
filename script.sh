term_width=`tput cols`
file_width=200
test_width=200
while [ $test_width -gt 60 ]
do
  if [ $term_width -gt $test_width ]
  then
    file_width=$test_width
    test_width=60
  else
    test_width=$[$test_width-20]
  fi
done

url="https://raw.githubusercontent.com/jlvallelonga/not-the-files/master/obiwans/"$file_width".txt"

curl -s -o ~/.obiwan $url

echo "alias ls='ls | cat ~/.obiwan && echo && echo \"THESE ARE NOT THE FILES YOU ARE LOOKING FOR\" && echo && ls'" >> ~/.bashrc
