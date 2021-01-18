![UFC Logo](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/Resources/UFC%20Logo.png)

# **UFC Fighter Analysis** :men_wrestling:

## **Overview of Project**

Our group members are UFC and MMA fans and would like to use the skills we learned in the course to examine fighting techniques to determine which have the most effect the win in a match. 


Mixed martial arts (MMA) is a full-contact combat sport based on striking, grappling and ground fighting, incorporating techniques from various combat sports and martial arts from around the world. Ultimate Fighting Championship (UFC) is a Las Vegas based promotion company that has revolutionized the fighting business since 1993. UFC features some of the highest-level fighters in the sport on its roster and produces events worldwide that showcase twelve weight divisions (eight men's divisions and four women's divisions).  As of 2020, the UFC has held over 500 events and grown into a globally popular multi-billion-dollar enterprise.

### *Purpose of Analysis*

Using a Kaggle dataset containing various attributes of UFC fighter stats, fighting techniques and body metrics, we will predict winning fighters with machine learning. In Week 1 of our project, we will use Python and Scikit-Learn (a Python Machine Learning Library) to build and evaluate several algorithms to predict match winners. 
We also created a database in pgAdmin using SQL to store the CSV data files and started working on a dashboard in Tableau for our presentation. 
A Git Hub repository was created for the analysis so everyone in the group can contribute and review information.  The group will meet twice a week during our scheduled class sessions on Zoom to work on the project and use our team Slack channel to communicate during the week. Our final results will be presented to the class using Google Slides. 

#### *Role Distribution: Segment 1*

Square: Mohammed

Triangle: Alexandra

Circle: Oybek

X: Felicia 

#### *Role Distribution: Segment 2*

Square: Alexandra

Triangle: Mohammed

Circle: Felicia

X: Oybek

#### *Role Distribution: Segment 3*

Square: Mohammed

Triangle: Felicia

Circle: Oybek

X: Alexandra

## **Results**

*Segment 1*

While our CSV file is small (23 columns and 8,990 rows), it is complete as it contains roughly every match under the UFC umbrella.  To clean the data and make it appropriate for machine learning.  Alexandra dropped unnecessary columns such as Fighter_total, Date_total and Location_total and NaN rows.  

![Updated Data Shape and Types](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/Resources/Updated%20Data%20Shape%20and%20Types.png)

![Updated Dataframe List](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/Resources/Updated%20DF%20List.png) 

*Note: Dropping the NaN rows reduced our data by 754 rows.*

She also renamed the Win Column to Win or Lose to better predict wins (1) and losses (0) with the model and for easier interpretation, converted columns with data type object to a list so the model can read the encoded information and used OneHotEncoder to encode and read the data into the model. 

*Segment 2*

After preprocessing the data, we decided to use feature selection to find the best attributes to explain the relationship between a fighter’s characteristics (independent variables) such as gender, class, weight, reach, height or odds and winning matches (target variable).  After using StandardScalar to train and test our data, we selected Random Forest to model our data and found the initial accuracy is 64%.  

Random Forest is our preferred modeling tool because it:
 * Runs efficiently on large data sets
 * Works against overfitting 
 * Can be used to rank input variables 

![12.20 Accuracy Score](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/Resources/12.20%20Accuracy%20Score.png)

This week, Mohammed created a database using SQL to store static data for use during the project.  Our database includes two tables, UFC Dataset and Mastertable_Text, and is joined using Match ID. To make sure we used the best entities, Mo mapped our database with an Entity Relationship Diagram. 

![1.10 ERD Diagram](https://github.com/mhossain615/UFC-/blob/main/Resources/1.10_ERD_Diagram.PNG)

Lastly, we began to develop our dashboard. Felicia generated images in Tableau to add to the data story being told. She created images that showed winning match finishes and winning stances and then reached out to the team on Slack for feedback on the visuals. 

![1.10 Slack Convo A](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/Resources/1.10%20Slack%20Convo%20A.png)

![1.10 Slack Convo B](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/Resources/1.10%20Slack%20Convo%20B.png)

![1.10 Slack Convo C](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/Resources/1.10%20Slack%20Convo%20C.png)

*Segment 3*

We decided to use feature selection to find the best attributes to explain the relationship between a fighter’s characteristics and winning matches. A linear regression model helped us identify which variables were most significant. This removed the noise in our model but the accuracy didn’t improve.

![1.17 Regression Results](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/1.17%20Regression%20Results.png)

We were able to improve the false negatives and positives - making our model more precise. However, we didn’t have enough data to explain the variance.

![1.17 Accuracy](https://github.com/mhossain615/UFC-/blob/Felicia_Branch/1.17%20Accuracy.png)

## **Summary**

*Segment 1*

This week we created the foundation for our UFC fighter analysis project by defining roles that play to our individual strengths and establishing the communication structure. We preprocessed our data for easier encoding and modeling. 

*Segment 2*

We performed an exploratory analysis and established a baseline accuracy score. Next, we’ll need to decide how we’d like to improve our model’s accuracy.  If given more time, visualization, like Felicia’s work with our Tableau Dashboard, will help us identify areas for fine tuning to improve our model’s accuracy.  An interactive dashboard is a powerful tool that can lend great strength to analysis. 

*Segment 3*

To fine tune our model’s accuracy, we used linear regression to identify the most significant variables.  While we were able to remove the noise and improve the model’s precision, we didn’t have enough data to explain the variance so we used our dashboard to visualize interesting observations from the dataset such as countries with the most winning fighters, winning stances and winning  finishes.
