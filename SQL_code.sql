Create table Mastertable_Text (
	Match_ID INT PRIMARY KEY,
	Fighter_total VARCHAR,
	odds_total INT,
	ev_total float,
	date_total date,
	location_total VARCHAR,
	country_total VARCHAR,
	winner_total INT,
	weight_class_total VARCHAR,
	gender_total VARCHAR
	);
	
Create table UFC_DATASET (
	Match_ID INT PRIMARY KEY,
	no_of_rounds_total INT,
	total_draw INT,
	total_losses INT,
	total_win_by_KO_TKO INT,
	total_win_by_submission INT,
	total_win_by_TKO_Doctor_stoppage INT,
	total_wins INT,
	total_stance VARCHAR,
	total_height FLOAT,
	total_reach FLOAT,
	total_weight INT,
	total_age INT,
	finish VARCHAR
	)
	

CREATE TABLE final_joined_table AS
SELECT * 
FROM mastertable_text JOIN ufc_dataset USING (Match_ID);
