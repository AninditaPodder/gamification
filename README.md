# Instructions to run the project  

Prerequisites: git 

- Clone the project from GitHub: Pull down the repository from this link or exact the shared zip file to access the application code. 
  https://github.com/AninditaPodder/gamification.git 
 
 - Change directory to “gamification” folder using the following command
   ```sh
   cd gamification 
   ```

 - Run the following pip command to install all the required packages for this application to run smoothly.
   ```sh
    pip install -r requirements.txt  
   ```
   Note: Best Practice is to create a virtual environment rather than installing all the python packages globally 
 
  - Create a database named “gamification” into MySQL server. 
 
 - Import the shared database dump (gamification.sql) into the newly created database named gamification. Reminder to ensure that the correct database password is being used in the database connection.   

 - To run the application, execute the following command from the gamification directory. 
   ```sh
    flask --app gamification run or  
    python -m flask --app gamification run or  
    python gamification.py 
   ```

- The web application will run at http://127.0.0.1:5000 
 
- Navigate to browser and open the link http://127.0.0.1:5000 to access the web application. 
