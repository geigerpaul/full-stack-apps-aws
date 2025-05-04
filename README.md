# Udacity Course: Full Stack Apps on AWS

# Project Description

You have been hired as a software engineer to develop an application that will help the FBI find missing people.  The application will upload images to the FBI cloud database hosted in AWS. This will allow the FBI to run facial recognition software on the images to detect a match. You will be developing a NodeJS server and deploying it on AWS Elastic Beanstalk. 
You will build upon the application we've developed during the lessons in this course. You'll complete a REST API endpoint in a backend service that processes incoming image URLs.

# Endpoints

curl --location http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/auth/token \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "email": "test@email.com",
        "password": "password"
    }'

curl --location http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/filteredimage?image_url=https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg --output kitten.jpg \
    --header 'Authorization: Bearer \<token\>'

curl --location http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/filteredimage?image_url=https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg --output sunflower.jpg \
    --header 'Authorization: Bearer  <token>'

# Endpoints Local

curl --location http://localhost:8082/auth/token \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "email": "test@email.com",
        "password": "password"
    }'

curl --location http://localhost:8082/filteredimage?image_url=https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg --output kitten.jpg \
    --header 'Authorization: Bearer  \<token\>'

curl --location http://localhost:8082/filteredimage?image_url=https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg --output sunflower.jpg \
    --header 'Authorization: Bearer  \<token>\'
