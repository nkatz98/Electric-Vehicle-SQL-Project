/* Query 1*/

USE ev;

CREATE OR REPLACE VIEW ev_query1 AS
	SELECT COUNT(model_year) AS "number_of_vehicles", make, model_year, MSRP, electric_vehicle_type
    FROM car_details
		JOIN car_model USING (model_id)
		JOIN car_make USING (make_id)
       WHERE model_year > 2017
      GROUP BY make, model_year, MSRP, electric_vehicle_type;
            
SELECT * FROM ev_query1;   




/* Query 2*/

USE ev;

CREATE OR REPLACE VIEW ev_query2 AS
	SELECT postal_code, make, COUNT(make) AS "Number of makes per postal code"
		FROM location
			JOIN car USING(location_id)
            JOIN car_details USING(car_details_info)
            JOIN car_model USING(model_id)
            JOIN car_make USING(make_id)
GROUP BY postal_code, make
HAVING COUNT(make) < 2
ORDER BY postal_code, make;
            
SELECT * FROM ev_query2;   




/* Query 3*/

USE ev;

CREATE OR REPLACE VIEW ev_query3 AS
	SELECT city, CAFV_eligibility, electric_range
    FROM cafv 
		JOIN car_model USING(DOL_vehicle_id)
        JOIN car_details USING(model_id)
        JOIN car USING(car_details_info)
        JOIN location USING(location_id)
	WHERE CAFV_eligibility = "Clean Alternative Fuel Vehicle Eligible";
    
SELECT * FROM ev_query3;  




/* Query 4*/

USE ev;

CREATE OR REPLACE VIEW ev_query4 AS
	SELECT VIN, model_year, make, model
	FROM car
		JOIN car_details USING(car_details_info)
        JOIN car_model USING(model_id)
        JOIN car_make USING(make_id);

SELECT * FROM ev_query4;  





/* Query 5*/

USE ev;

CREATE OR REPLACE VIEW ev_query5 AS
    SELECT model_year, make, model
    FROM car_model
        JOIN car_make USING(make_id)
        JOIN car_details USING(model_id)
        WHERE model_id IN
            (SELECT model_id
            FROM car_details
            WHERE model_year > '2019' AND make = 'TESLA')
        ORDER BY model_year;
        
SELECT * FROM ev_query5;