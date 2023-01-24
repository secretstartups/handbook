if [ -d "./source" ]; then
  echo 'New content should be added to "/content" not "/source"!'
  echo 'See: https://internal-handbook.gitlab.io/docs/#differences-from-public-handbook'
fi
