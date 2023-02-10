git add . 
echo "Successfully added in all files in the current dir"
git status -s
echo "Your contents are added in Staged area"
echo "Enter your commit:"
read m # for commit user data
echo "is this your commit TYPE y/n?:" $m
read n

if [ $n = y ];
then
git commit -m "$m"
echo "Committed Successfully"
else
	echo "press ctrl + c to go out of the script"
fi

echo "Do you want to push to remote repo"
read r
if [ $r = y ];
then
	git push docs master
echo "Successfully pushed to my remote repo"



