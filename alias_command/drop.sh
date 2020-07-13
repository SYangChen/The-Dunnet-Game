ls ~/O/$* > ~/X 2>&1 || ( echo "I do not know what that is." && echo > ~/A/fail )
ls ~/I/$* > ~/X 2>&1 || ls ~/A/fail > ~/X 2>&1 || ( echo "You do not have that." && echo > ~/A/fail )
ls ~/A/fail > ~/X 2>&1 && rm -f ~/A/* && exit || echo > ~/A/$*
echo Done. && ( ls ~/A/*r*l* > ~/X 2>&1 && mv ~/I/*r*l* . ) || ( ls ~/A/[bc]*[rp][du] > ~/X 2>&1 && mv ~/I/[bc]*[rp][du] . ) || ( ls ~/A/key > ~/X 2>&1 && mv ~/I/key . && chmod 444 ~/PA2/start/e/e/ne/ne/ne ) || ( ls ~/A/food > ~/X 2>&1 && ls .key >& ~/X && rm -f ~/I/food && rm -f bear && mv .key key && echo "The bear takes the food and runs away with it. He left something behind." ) || mv ~/I/$* . && rm -f ~/A/*
