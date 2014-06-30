echo "Let's make a rails app! Enter the app's name:"
read name
rails new $name -T --skip-bundle -m https://gist.github.com/trathod99/9011344/raw/ 
