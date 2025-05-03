# Udacity Course Full Stack Apps on AWS

# Project Description

You have been hired as a software engineer to develop an application that will help the FBI find missing people.  The application will upload images to the FBI cloud database hosted in AWS. This will allow the FBI to run facial recognition software on the images to detect a match. You will be developing a NodeJS server and deploying it on AWS Elastic Beanstalk. 
You will build upon the application we've developed during the lessons in this course. You'll complete a REST API endpoint in a backend service that processes incoming image URLs.

# Endpoints

curl --location http://localhost:8082/auth/token \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "email": "test@email.com",
        "password": "password"
    }'

curl --location http://localhost:8082/filteredimage?image_url=https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg --output kitten.jpg \
    --header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAZW1haWwuY29tIiwidG9rZW5UeXBlIjoiQUNDRVNTX1RPS0VOIiwiaWF0IjoxNzQ2MzA4ODUzLCJleHAiOjE3NDYzMTI0NTN9.LrIFiLVr81GeSiul2EH-wU2bTnnr8EfWmmlJ60HX0I3KQncNo2gRuW16CC_r9jCQDtSe6aPqAg0Su9qioi56-ttvbiAi4yDxJrY-R4dmx8SUZSG6IpHoUpz3v9ZSPpk_0UtVtHWmxGHlXjbJ82MqOZaOdZSUxp9XF29jfFlQXuCK5KUqNnYmH2wtZ6oFKZVMQOXQFCncEk4YQMItlgi2oQbD5N25vs8VoznqHKufxy9N56XGAZ8Vioa9eAl2AoRmRKxozBP9P9nR0NQsgOPapjWIkcQJMmizAUJnG_y2M73KAXDSnTV2VsDdTbteekA0352OYLlz8tseo-GONrSJUORhJjaQtO40U0oII0AKoODn_Rdpn5Uru_m7H8GjyA-z_iw-47_GG2QQOXpk9wXgH-85JmRyJxic9xu5DEI5KVBQwL9wQp3c8pHstmYASbAvD4-TBQXg1dH5oEByJdUvyLjGY8-37-CHVCe02eHCgLTpi3lz-0Dz3j9JwZ1puAI-Ex9aqXv6WiRQbUs5uiiDabmXNgBwcmsF7UfLA0IIwOaEJh49nHJoOLRqXHF3Nfdeqf2wz4DDx2-JmzMEsgvFBGis2tb_tCByOKt-9HmAFdayGKllt6YvjcQWT7KvJethaUCJV3B4-VwWsxUfiSg8uy8NSwhSYNdLIqXr2iIr1KQ'

curl --location http://localhost:8082/filteredimage?image_url=https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg --output sunflower.jpg \
    --header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAZW1haWwuY29tIiwidG9rZW5UeXBlIjoiQUNDRVNTX1RPS0VOIiwiaWF0IjoxNzQ2MzA4ODUzLCJleHAiOjE3NDYzMTI0NTN9.LrIFiLVr81GeSiul2EH-wU2bTnnr8EfWmmlJ60HX0I3KQncNo2gRuW16CC_r9jCQDtSe6aPqAg0Su9qioi56-ttvbiAi4yDxJrY-R4dmx8SUZSG6IpHoUpz3v9ZSPpk_0UtVtHWmxGHlXjbJ82MqOZaOdZSUxp9XF29jfFlQXuCK5KUqNnYmH2wtZ6oFKZVMQOXQFCncEk4YQMItlgi2oQbD5N25vs8VoznqHKufxy9N56XGAZ8Vioa9eAl2AoRmRKxozBP9P9nR0NQsgOPapjWIkcQJMmizAUJnG_y2M73KAXDSnTV2VsDdTbteekA0352OYLlz8tseo-GONrSJUORhJjaQtO40U0oII0AKoODn_Rdpn5Uru_m7H8GjyA-z_iw-47_GG2QQOXpk9wXgH-85JmRyJxic9xu5DEI5KVBQwL9wQp3c8pHstmYASbAvD4-TBQXg1dH5oEByJdUvyLjGY8-37-CHVCe02eHCgLTpi3lz-0Dz3j9JwZ1puAI-Ex9aqXv6WiRQbUs5uiiDabmXNgBwcmsF7UfLA0IIwOaEJh49nHJoOLRqXHF3Nfdeqf2wz4DDx2-JmzMEsgvFBGis2tb_tCByOKt-9HmAFdayGKllt6YvjcQWT7KvJethaUCJV3B4-VwWsxUfiSg8uy8NSwhSYNdLIqXr2iIr1KQ'
