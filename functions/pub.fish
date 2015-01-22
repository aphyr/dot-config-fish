# Upload shit to aphyr.com
function pub --description "Upload a file to aphyr.com/media"
  set file (basename $argv[1]);
  scp $argv[1] aphyr.com:media/; and \
  ssh aphyr.com chmod a+r "media/$file" &

  set url "http://aphyr.com/media/$file"
  echo -n $url | xclip &
  echo $url;
end
