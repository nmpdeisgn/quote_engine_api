**Building and running the container**
`docker-compose build`

**To run the bash terminal**
`docker-compose run --rm --service-ports ruby_dev`

**Update and install gems.**
`bundle update`
`bundle install`

**To run the rails server**
`rails s -p $PORT -b 0.0.0.0`

**To stop the rails server**
`ctrl-d`

**To exit bash shell**
`exit`

**To cleanup and delete the image**
`docker-compose down`

