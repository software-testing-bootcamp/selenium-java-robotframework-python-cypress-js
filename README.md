# Web Test Automation: Robot Framework vs Cypress vs Selenium

"Software Testing Bootcamp" is a community of people interested in software testing. We record the weekly webinars that we organize and publish them on Youtube. For more information -> https://testingbootcamp.com/

**Youtube Webinar Video:**

https://youtu.be/CxA0hZPqSZ4

![image](https://user-images.githubusercontent.com/89974862/137537135-9bc84d3a-09bc-4767-bbe1-21bd2f3d9b27.png)


******


## SELENIUM-JAVA-JUNIT PROJECT

![image](https://user-images.githubusercontent.com/89974862/143782320-4a122e31-5b49-4368-9b61-4dbe7fc80f7a.png)

**Requirements:**

* Java JDK8 Installation

https://www.oracle.com/tr/java/technologies/javase-downloads.html 


**How to run Junit test on Chrome browser from terminal?**

cd $PROJECT_PATH/Selenium-Java-Junit

mvn clean install site -Dbrowser.type=chrome

******

## ROBOT FRAMEWORK-PYTHON3

![image](https://user-images.githubusercontent.com/89974862/143782574-b5ede1c5-f24b-4d2e-a3d7-fd5e90cc4ade.png)

**Requirements:**

* Python3 Installation

https://www.python.org/downloads/


* Required Python Libraries Installation on Terminal/CMD

  - pip install robotframework

  - pip install --upgrade robotframework-pageobjectlibrary

  - pip install --upgrade robotframework-seleniumlibrary

  - pip install webdrivermanager

  - webdrivermanager firefox chrome --linkpath /usr/local/bin

  - pip install -r requirements.txt


**How to run RobotFramework test from terminal?**

cd $PROJECT_PATH/robotframework-python3/tests

robot DemoApp.robot


******


## CYPRESS

![image](https://user-images.githubusercontent.com/89974862/143782900-65a011b6-89f0-4a8d-bb2b-69bcfd62a02c.png)


**Requirements:**

* NodeJS Installation

  - https://nodejs.org/en/download/

* Required NodeJS Libraries Installation on Terminal/CMD

  - npm install cypress

* Installing and opening Cypress

  - https://docs.cypress.io/guides/getting-started/installing-cypress


**How to run Cypress test from terminal?**

* Open Cypress application

cd /your/project/path/Cypress-js-mocha

./node_modules/.bin/cypress open

* Running locally

  - cd /your/project/path/Cypress-js-mocha

  - npx cypress run --browser chrome --headed


**Resources:**

https://www.selenium.dev/documentation/

https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

https://docs.cypress.io/guides/overview/why-cypress#In-a-nutshell
