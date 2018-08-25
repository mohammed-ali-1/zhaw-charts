status=`curl -X GET 'http://helmqa-helmqa.a3c1.starter-us-west-1.openshiftapps.com/livecheck?repo=https://github.com/appuio/charts.git' | jq .code`
if [ $status -eq 404 ]; 
then travis_terminate 1 
fi
