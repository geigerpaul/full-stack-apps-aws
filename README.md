# Udacity Course - Full Stack Apps on AWS - Final Project

# Screenshot of elastic beanstalk application after deployment

[images/elastic_beanstalk.jpg](images/elastic_beanstalk.jpg)

# Endpoint URL for the running elastic beanstalk application

[http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/](http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/)

# Example Request

curl --location http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/filteredimage?image_url=https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg \
    --header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAZW1haWwuY29tIiwidG9rZW5UeXBlIjoiQUNDRVNTX1RPS0VOIiwiaWF0IjoxNzQ2Mzg4NjA1LCJleHAiOjE3NDY0NzUwMDV9.cC4iU0F7fxZnu87X3MmaV7Q8vMP1Hcnd8vCTitMShXk-uoqgvP89hNtQhSfEjXHSGWWUHOhThoP3uZk3wr8DqAUCze11FqfCZs7wGD3l4UKFp4_jfKAz-kNbML240nfyiopZ5KeN5UsHd9TFUXBa9z6yK2nVASBCZdYtRZRlwpj_bXuTSyiWQiwoLG7ERTEA21ZLrrzqem1RiCVgTfR9jFSp41VvroQW_2mDBAPszGqSI7UiDjf8PqkcrZFdQlzJYIs81ofANV0dZyyr4uJn6DfSa6pk57UTPtbHtmNA1_Bge5FATzf1gIrY3Gy7Tx-vCKtgWPzPq58D1ejyTYnf_VTdNUBDTEbVgQ00pRYJKbT2VuRrxKiBQoH8A7SGMcaZHcL92XG2ymrYTnZk4sT0EjVvcDAKd1Fi5WoLkGO55EY5jMA69thlYGSp_cpFycXT3Z-QoQVYozZijLrvysBjtfJI8FEUZOpkLgtd9WaHxT105Bql-TDbc1zeMoqOI02mW3d6QTAiUl_2WMu0T4FVHlcLcp-EREDYMRWzyYMqfOuHG3yFVTZ1W0nweBo2mCbaBq_741EnUA4CJevkhOhoi9911poqBOhoSzVqk3Mr16sCaZ_YLGaywzGZVwFjNMGMbXN1MKhhOqcRoApaargfFnqdFeJK0FDBKB8sMQGHU_E'

# Project Description

You have been hired as a software engineer to develop an application that will help the FBI find missing people.  The application will upload images to the FBI cloud database hosted in AWS. This will allow the FBI to run facial recognition software on the images to detect a match. You will be developing a NodeJS server and deploying it on AWS Elastic Beanstalk. 
You will build upon the application we've developed during the lessons in this course. You'll complete a REST API endpoint in a backend service that processes incoming image URLs.

# Tested Endpoints

curl --location http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/auth/token \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "email": "test@email.com",
        "password": "password"
    }'

curl --location http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/filteredimage?image_url=https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg --output kitten.jpg \
    --header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAZW1haWwuY29tIiwidG9rZW5UeXBlIjoiQUNDRVNTX1RPS0VOIiwiaWF0IjoxNzQ2Mzg4NjA1LCJleHAiOjE3NDY0NzUwMDV9.cC4iU0F7fxZnu87X3MmaV7Q8vMP1Hcnd8vCTitMShXk-uoqgvP89hNtQhSfEjXHSGWWUHOhThoP3uZk3wr8DqAUCze11FqfCZs7wGD3l4UKFp4_jfKAz-kNbML240nfyiopZ5KeN5UsHd9TFUXBa9z6yK2nVASBCZdYtRZRlwpj_bXuTSyiWQiwoLG7ERTEA21ZLrrzqem1RiCVgTfR9jFSp41VvroQW_2mDBAPszGqSI7UiDjf8PqkcrZFdQlzJYIs81ofANV0dZyyr4uJn6DfSa6pk57UTPtbHtmNA1_Bge5FATzf1gIrY3Gy7Tx-vCKtgWPzPq58D1ejyTYnf_VTdNUBDTEbVgQ00pRYJKbT2VuRrxKiBQoH8A7SGMcaZHcL92XG2ymrYTnZk4sT0EjVvcDAKd1Fi5WoLkGO55EY5jMA69thlYGSp_cpFycXT3Z-QoQVYozZijLrvysBjtfJI8FEUZOpkLgtd9WaHxT105Bql-TDbc1zeMoqOI02mW3d6QTAiUl_2WMu0T4FVHlcLcp-EREDYMRWzyYMqfOuHG3yFVTZ1W0nweBo2mCbaBq_741EnUA4CJevkhOhoi9911poqBOhoSzVqk3Mr16sCaZ_YLGaywzGZVwFjNMGMbXN1MKhhOqcRoApaargfFnqdFeJK0FDBKB8sMQGHU_E'

curl --location http://full-stack-apps-aws-dev.us-east-1.elasticbeanstalk.com/filteredimage?image_url=https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg --output sunflower.jpg \
    --header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAZW1haWwuY29tIiwidG9rZW5UeXBlIjoiQUNDRVNTX1RPS0VOIiwiaWF0IjoxNzQ2Mzg4NjA1LCJleHAiOjE3NDY0NzUwMDV9.cC4iU0F7fxZnu87X3MmaV7Q8vMP1Hcnd8vCTitMShXk-uoqgvP89hNtQhSfEjXHSGWWUHOhThoP3uZk3wr8DqAUCze11FqfCZs7wGD3l4UKFp4_jfKAz-kNbML240nfyiopZ5KeN5UsHd9TFUXBa9z6yK2nVASBCZdYtRZRlwpj_bXuTSyiWQiwoLG7ERTEA21ZLrrzqem1RiCVgTfR9jFSp41VvroQW_2mDBAPszGqSI7UiDjf8PqkcrZFdQlzJYIs81ofANV0dZyyr4uJn6DfSa6pk57UTPtbHtmNA1_Bge5FATzf1gIrY3Gy7Tx-vCKtgWPzPq58D1ejyTYnf_VTdNUBDTEbVgQ00pRYJKbT2VuRrxKiBQoH8A7SGMcaZHcL92XG2ymrYTnZk4sT0EjVvcDAKd1Fi5WoLkGO55EY5jMA69thlYGSp_cpFycXT3Z-QoQVYozZijLrvysBjtfJI8FEUZOpkLgtd9WaHxT105Bql-TDbc1zeMoqOI02mW3d6QTAiUl_2WMu0T4FVHlcLcp-EREDYMRWzyYMqfOuHG3yFVTZ1W0nweBo2mCbaBq_741EnUA4CJevkhOhoi9911poqBOhoSzVqk3Mr16sCaZ_YLGaywzGZVwFjNMGMbXN1MKhhOqcRoApaargfFnqdFeJK0FDBKB8sMQGHU_E'

# Local Endpoints

curl --location http://localhost:8082/auth/token \
    --header 'Content-Type: application/json' \
    --data-raw '{
        "email": "test@email.com",
        "password": "password"
    }'

curl --location http://localhost:8082/filteredimage?image_url=https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg --output kitten.jpg \
    --header 'Authorization: Bearer  \<token\>'

curl --location http://localhost:8082/filteredimage?image_url=https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg --output sunflower.jpg \
    --header 'Authorization: Bearer  \<token\>'
