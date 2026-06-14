USE VirtualFitnessTrainer;
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO User (Name,Email,Password_Hash,Birth_Date,Gender,Height,Weight,Body_Type,Activity_Level,Primary_Goal,Target_Weight,Timeline,Current_Fitness_Level,Workout_Frequency,Dietery_Preference,Is_Verified) VALUES
  ('Ali Hassan','ali.hassan@gmail.com',SHA2('Pass@Ali123',256),'1990-03-15','Male',175.0,80.0,'Athletic','Moderately Active','Muscle Gain',75.0,6,'Intermediate',5,'Non-Vegetarian',1),
  ('Sara Khan','sara.khan@gmail.com',SHA2('Pass@Sara123',256),'1995-07-22','Female',162.0,62.0,'Average','Lightly Active','Weight Loss',55.0,4,'Beginner',3,'Vegetarian',1),
  ('Ahmed Raza','ahmed.raza@yahoo.com',SHA2('Pass@Ahmed123',256),'1988-11-05','Male',180.0,90.0,'Overweight','Sedentary','Weight Loss',75.0,6,'Beginner',2,'Non-Vegetarian',1),
  ('Fatima Malik','fatima.malik@hotmail.com',SHA2('Pass@Fatima123',256),'1992-05-18','Female',165.0,58.0,'Slim','Very Active','Maintain Fitness',NULL,NULL,'Advanced',6,'Vegetarian',1),
  ('Usman Tariq','usman.tariq@gmail.com',SHA2('Pass@Usman123',256),'1985-09-30','Male',178.0,85.0,'Athletic','Very Active','Muscle Gain',88.0,8,'Advanced',6,'Non-Vegetarian',1),
  ('Ayesha Siddiqui','ayesha.sid@gmail.com',SHA2('Pass@Ayesha123',256),'1998-02-14','Female',158.0,55.0,'Average','Moderately Active','General Health',NULL,NULL,'Intermediate',4,'Vegetarian',1),
  ('Bilal Chaudhry','bilal.ch@gmail.com',SHA2('Pass@Bilal123',256),'1993-12-01','Male',172.0,78.0,'Average','Lightly Active','General Health',NULL,NULL,'Beginner',3,'Non-Vegetarian',1),
  ('Zara Iqbal','zara.iqbal@yahoo.com',SHA2('Pass@Zara123',256),'2000-08-25','Female',170.0,68.0,'Athletic','Very Active','Improve Endurance',65.0,5,'Intermediate',5,'Vegan',1),
  ('Hamza Sheikh','hamza.sheikh@gmail.com',SHA2('Pass@Hamza123',256),'1991-04-12','Male',183.0,95.0,'Overweight','Moderately Active','Weight Loss',80.0,8,'Intermediate',4,'Non-Vegetarian',1),
  ('Nadia Hussain','nadia.hussain@hotmail.com',SHA2('Pass@Nadia123',256),'1987-06-30','Female',160.0,60.0,'Slim','Lightly Active','Maintain Fitness',NULL,NULL,'Advanced',5,'Vegetarian',1),
  ('Omar Farooq','omar.farooq@gmail.com',SHA2('Pass@Omar123',256),'1994-01-19','Male',176.0,82.0,'Athletic','Extra Active','Muscle Gain',87.0,5,'Advanced',7,'Non-Vegetarian',1),
  ('Sana Baig','sana.baig@gmail.com',SHA2('Pass@Sana123',256),'1999-10-07','Female',155.0,52.0,'Slim','Moderately Active','Weight Loss',48.0,3,'Beginner',3,'Vegetarian',1),
  ('Imran Qureshi','imran.qureshi@yahoo.com',SHA2('Pass@Imran123',256),'1982-03-25','Male',169.0,88.0,'Overweight','Sedentary','Weight Loss',72.0,12,'Beginner',2,'Non-Vegetarian',1),
  ('Hira Nawaz','hira.nawaz@gmail.com',SHA2('Pass@Hira123',256),'1996-09-13','Female',163.0,65.0,'Average','Lightly Active','General Health',NULL,NULL,'Intermediate',3,'Non-Vegetarian',1),
  ('Asad Mehmood','asad.mehmood@hotmail.com',SHA2('Pass@Asad123',256),'1989-07-04','Male',177.0,83.0,'Athletic','Very Active','Improve Endurance',NULL,NULL,'Advanced',6,'Non-Vegetarian',1),
  ('Mariam Javed','mariam.javed@gmail.com',SHA2('Pass@Mariam123',256),'2001-05-30','Female',167.0,63.0,'Average','Moderately Active','Maintain Fitness',NULL,NULL,'Intermediate',4,'Vegetarian',1),
  ('Faisal Rana','faisal.rana@gmail.com',SHA2('Pass@Faisal123',256),'1984-11-22','Male',174.0,92.0,'Overweight','Lightly Active','Weight Loss',78.0,6,'Beginner',2,'Non-Vegetarian',1),
  ('Amna Rehman','amna.rehman@yahoo.com',SHA2('Pass@Amna123',256),'1997-04-08','Female',159.0,54.0,'Slim','Very Active','General Health',NULL,NULL,'Intermediate',5,'Vegan',1),
  ('Danish Ali','danish.ali@gmail.com',SHA2('Pass@Danish123',256),'1990-08-17','Male',181.0,87.0,'Athletic','Extra Active','Muscle Gain',92.0,4,'Advanced',7,'Non-Vegetarian',1),
  ('Komal Shah','komal.shah@hotmail.com',SHA2('Pass@Komal123',256),'1995-12-03','Female',164.0,70.0,'Average','Sedentary','Weight Loss',58.0,8,'Beginner',2,'Vegetarian',1),
  ('Tariq Mahmood','tariq.mahmood@gmail.com',SHA2('Pass@Tariq123',256),'1986-06-14','Male',179.0,88.0,'Overweight','Moderately Active','Weight Loss',76.0,5,'Intermediate',4,'Non-Vegetarian',1),
  ('Saima Aziz','saima.aziz@gmail.com',SHA2('Pass@Saima123',256),'1993-02-28','Female',157.0,57.0,'Average','Lightly Active','Maintain Fitness',NULL,NULL,'Beginner',3,'Vegetarian',1),
  ('Rizwan Butt','rizwan.butt@yahoo.com',SHA2('Pass@Rizwan123',256),'1988-10-10','Male',171.0,79.0,'Athletic','Very Active','Muscle Gain',82.0,3,'Intermediate',5,'Non-Vegetarian',1),
  ('Lubna Nisar','lubna.nisar@gmail.com',SHA2('Pass@Lubna123',256),'2000-07-21','Female',166.0,61.0,'Average','Moderately Active','Improve Endurance',NULL,NULL,'Intermediate',4,'Non-Vegetarian',1),
  ('Kamran Zahid','kamran.zahid@hotmail.com',SHA2('Pass@Kamran123',256),'1983-05-09','Male',168.0,95.0,'Overweight','Sedentary','Weight Loss',78.0,10,'Beginner',2,'Non-Vegetarian',1),
  ('Rabia Awan','rabia.awan@gmail.com',SHA2('Pass@Rabia123',256),'1998-03-16','Female',161.0,59.0,'Slim','Lightly Active','General Health',NULL,NULL,'Beginner',3,'Vegetarian',1),
  ('Shahid Mirza','shahid.mirza@gmail.com',SHA2('Pass@Shahid123',256),'1991-09-27','Male',185.0,100.0,'Overweight','Moderately Active','Weight Loss',85.0,9,'Intermediate',3,'Non-Vegetarian',1),
  ('Noor Fatima','noor.fatima@yahoo.com',SHA2('Pass@Noor123',256),'1996-01-05','Female',169.0,64.0,'Athletic','Very Active','Muscle Gain',68.0,6,'Advanced',6,'Vegetarian',1),
  ('Adeel Abbasi','adeel.abbasi@gmail.com',SHA2('Pass@Adeel123',256),'1987-07-19','Male',173.0,81.0,'Average','Lightly Active','General Health',NULL,NULL,'Beginner',3,'Non-Vegetarian',1),
  ('Mehwish Hayat','mehwish.h@gmail.com',SHA2('Pass@Mehwish123',256),'1994-11-11','Female',162.0,56.0,'Slim','Moderately Active','Maintain Fitness',NULL,NULL,'Intermediate',4,'Vegetarian',1);

INSERT INTO Health_Condition (UserID,HealthCondition) VALUES
  (1,'None'),
  (2,'None'),
  (3,'Diabetes'),
  (3,'Hypertension'),
  (4,'None'),
  (5,'None'),
  (6,'Asthma'),
  (7,'None'),
  (8,'None'),
  (9,'Joint Problems'),
  (10,'None'),
  (11,'None'),
  (12,'None'),
  (13,'Diabetes'),
  (13,'Hypertension'),
  (14,'None'),
  (15,'None'),
  (16,'None'),
  (17,'Heart Conditions'),
  (18,'None'),
  (19,'None'),
  (20,'None'),
  (21,'Diabetes'),
  (22,'None'),
  (23,'Hypertension'),
  (24,'None'),
  (25,'Diabetes'),
  (25,'Joint Problems'),
  (26,'None'),
  (27,'Hypertension'),
  (28,'None'),
  (29,'None'),
  (30,'None'),
  (1,'Asthma'),
  (5,'Joint Problems');

INSERT INTO Injuries (UserID,Injury) VALUES
  (3,'Lower back strain'),
  (5,'Right shoulder rotator cuff tear'),
  (9,'Left knee ligament sprain'),
  (13,'Herniated disc L4-L5'),
  (17,'Achilles tendon injury'),
  (21,'Right ankle sprain'),
  (25,'Left hip flexor strain'),
  (27,'Cervical spine injury'),
  (1,'Old right knee meniscus tear'),
  (6,'Mild wrist tendinitis'),
  (11,'Previous hamstring pull'),
  (15,'Right elbow tennis elbow'),
  (23,'Plantar fasciitis left foot'),
  (28,'Old shoulder dislocation'),
  (30,'Shin splints history'),
  (4,'Mild knee osteoarthritis'),
  (8,'Right IT band syndrome'),
  (16,'Groin strain'),
  (19,'Bicep tendinitis right arm'),
  (22,'Stress fracture left foot');

  INSERT INTO Food_Allergy (UserID,Food_Allergy) VALUES
  (2,'Gluten'),
  (6,'Peanuts'),
  (8,'Tree nuts'),
  (10,'Shellfish'),
  (12,'Dairy'),
  (14,'Eggs'),
  (18,'Soy'),
  (20,'Wheat'),
  (24,'Fish'),
  (26,'Sesame'),
  (3,'Lactose'),
  (7,'Shellfish'),
  (13,'Peanuts'),
  (17,'Gluten'),
  (22,'Dairy'),
  (5,'None known'),
  (15,'Mustard'),
  (28,'Celery'),
  (30,'Sulphites'),
  (9,'Lupin');

INSERT INTO Login_Activity (UserID,Email,Remember_Me,IsFailed,Login_Time,IP_Address,Device_Category,OS_Name,OS_Version,Browser_Name,Browser_Version) VALUES
  (1,'ali.hassan@gmail.com',1,0,'2025-01-10 08:30:00','192.168.1.10','Desktop','Windows','11','Chrome','120.0'),
  (2,'sara.khan@gmail.com',0,0,'2025-01-10 09:15:00','192.168.1.11','Mobile','Android','13','Chrome','120.0'),
  (3,'ahmed.raza@yahoo.com',0,1,'2025-01-11 10:00:00','192.168.1.12','Desktop','Windows','10','Firefox','121.0'),
  (3,'ahmed.raza@yahoo.com',0,0,'2025-01-11 10:05:00','192.168.1.12','Desktop','Windows','10','Firefox','121.0'),
  (4,'fatima.malik@hotmail.com',1,0,'2025-01-12 07:45:00','10.0.0.5','Mobile','iOS','17','Safari','17.0'),
  (5,'usman.tariq@gmail.com',0,0,'2025-01-12 18:20:00','10.0.0.6','Desktop','macOS','14','Safari','17.0'),
  (6,'ayesha.sid@gmail.com',1,0,'2025-01-13 11:30:00','192.168.2.10','Tablet','Android','13','Chrome','120.0'),
  (7,'bilal.ch@gmail.com',0,1,'2025-01-13 14:00:00','192.168.2.11','Desktop','Windows','11','Edge','120.0'),
  (7,'bilal.ch@gmail.com',0,1,'2025-01-13 14:03:00','192.168.2.11','Desktop','Windows','11','Edge','120.0'),
  (7,'bilal.ch@gmail.com',0,0,'2025-01-13 14:06:00','192.168.2.11','Desktop','Windows','11','Edge','120.0'),
  (8,'zara.iqbal@yahoo.com',1,0,'2025-01-14 06:00:00','172.16.0.5','Mobile','iOS','16','Safari','16.5'),
  (9,'hamza.sheikh@gmail.com',0,0,'2025-01-14 20:10:00','172.16.0.6','Desktop','Linux','22.04','Firefox','121.0'),
  (10,'nadia.hussain@hotmail.com',0,0,'2025-01-15 09:30:00','192.168.3.1','Mobile','Android','12','Chrome','119.0'),
  (11,'omar.farooq@gmail.com',1,0,'2025-01-15 17:45:00','192.168.3.2','Desktop','Windows','11','Chrome','120.0'),
  (12,'sana.baig@gmail.com',0,0,'2025-01-16 08:00:00','10.0.1.5','Mobile','iOS','17','Safari','17.0'),
  (13,'imran.qureshi@yahoo.com',0,1,'2025-01-16 11:00:00','10.0.1.6','Desktop','Windows','10','Chrome','120.0'),
  (13,'imran.qureshi@yahoo.com',0,0,'2025-01-16 11:05:00','10.0.1.6','Desktop','Windows','10','Chrome','120.0'),
  (14,'hira.nawaz@gmail.com',1,0,'2025-01-17 07:30:00','192.168.4.10','Tablet','iOS','16','Safari','16.0'),
  (15,'asad.mehmood@hotmail.com',0,0,'2025-01-17 19:00:00','192.168.4.11','Desktop','Windows','11','Chrome','121.0'),
  (16,'mariam.javed@gmail.com',0,0,'2025-01-18 10:15:00','172.16.1.5','Mobile','Android','13','Chrome','120.0'),
  (17,'faisal.rana@gmail.com',0,0,'2025-01-18 13:45:00','172.16.1.6','Desktop','macOS','13','Firefox','121.0'),
  (18,'amna.rehman@yahoo.com',1,0,'2025-01-19 07:00:00','192.168.5.1','Mobile','iOS','17','Safari','17.0'),
  (19,'danish.ali@gmail.com',0,0,'2025-01-19 18:30:00','192.168.5.2','Desktop','Windows','11','Chrome','121.0'),
  (20,'komal.shah@hotmail.com',0,0,'2025-01-20 09:00:00','10.0.2.5','Mobile','Android','12','Samsung Internet','23.0'),
  (21,'tariq.mahmood@gmail.com',0,1,'2025-01-20 12:00:00','10.0.2.6','Desktop','Windows','10','Edge','120.0'),
  (21,'tariq.mahmood@gmail.com',0,0,'2025-01-20 12:04:00','10.0.2.6','Desktop','Windows','10','Edge','120.0'),
  (22,'saima.aziz@gmail.com',1,0,'2025-01-21 08:45:00','192.168.6.1','Mobile','iOS','16','Safari','16.5'),
  (23,'rizwan.butt@yahoo.com',0,0,'2025-01-21 17:00:00','192.168.6.2','Desktop','Windows','11','Chrome','120.0'),
  (24,'lubna.nisar@gmail.com',0,0,'2025-01-22 10:30:00','172.16.2.5','Tablet','Android','13','Firefox','121.0'),
  (25,'kamran.zahid@hotmail.com',0,1,'2025-01-22 14:00:00','172.16.2.6','Desktop','Windows','10','IE','11.0'),
  (25,'kamran.zahid@hotmail.com',0,0,'2025-01-22 14:10:00','172.16.2.6','Desktop','Windows','10','Chrome','120.0'),
  (26,'rabia.awan@gmail.com',1,0,'2025-01-23 07:30:00','192.168.7.1','Mobile','iOS','17','Safari','17.0'),
  (27,'shahid.mirza@gmail.com',0,0,'2025-01-23 19:15:00','192.168.7.2','Desktop','Linux','20.04','Firefox','121.0'),
  (28,'noor.fatima@yahoo.com',1,0,'2025-01-24 08:00:00','10.0.3.5','Mobile','Android','13','Chrome','121.0'),
  (29,'adeel.abbasi@gmail.com',0,0,'2025-01-24 12:00:00','10.0.3.6','Desktop','Windows','11','Chrome','120.0'),
  (30,'mehwish.h@gmail.com',0,0,'2025-01-25 09:00:00','192.168.8.1','Mobile','iOS','16','Safari','16.0');

INSERT INTO Exercise (Exercise_Name,Exercise_Category,Difficulty_Level,Equipment_Needed,Calories_Burned_Per_Rep,Description,Tips,Common_Mistakes) VALUES
  ('balance board','Other','Beginner','None',0.3,'The balance board exercise involves standing on a balance board with one foot, engaging the core and lower body muscles to maintain stability and balance. This exercise primarily targets the quads, while also engaging the calves, hamstrings, and glutes as secondary muscles.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('battling ropes','Other','Beginner','Other',0.3,'Battling ropes is a dynamic exercise that targets the deltoids while also engaging the forearms and core. It involves making rapid, alternating waves with heavy ropes, providing both a strength and cardiovascular challenge.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('stationary bike walk','Other','Beginner','Machine',0.3,'The stationary bike walk is a cardiovascular exercise performed on a leverage machine (stationary bike). It primarily targets the cardiovascular system and also engages the quadriceps, hamstrings, and calves. The exercise involves pedaling at a steady pace, with the option to adjust resistance for increased intensity.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('jack burpee','Other','Beginner','None',0.3,'The jack burpee is a high-intensity, full-body exercise that combines a squat, push-up, and jump to elevate heart rate and improve cardiovascular fitness while also engaging multiple muscle groups.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('mountain climber','Other','Beginner','None',0.3,'Mountain climbers are a dynamic bodyweight exercise that targets the cardiovascular system while also engaging the core, shoulders, and triceps. The movement mimics a running motion in a plank position, making it effective for both cardio and muscular endurance.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('run (equipment)','Other','Beginner','None',0.3,'Running in place is a cardiovascular exercise that elevates the heart rate and improves overall endurance. It requires no equipment and can be performed anywhere, making it accessible for most fitness levels.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('run','Other','Beginner','None',0.3,'Running is a fundamental cardiovascular exercise that involves jogging or running in place or over a distance. It primarily targets the cardiovascular system and also engages the lower body muscles.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('circles knee stretch','Other','Beginner','None',0.3,'The circles knee stretch is a bodyweight exercise that targets the calves and also engages the hamstrings and quadriceps. It involves standing on the balls of your feet with knees bent and rotating the knees in circular motions to improve mobility and flexibility in the lower legs.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('kettlebell plyo push-up','Other','Beginner','Kettlebell',0.3,'The kettlebell plyo push-up is an explosive push-up variation performed with hands on kettlebells, targeting the chest, triceps, shoulders, and core. It requires significant upper body strength, stability, and coordination, as well as explosive power to lift the hands off the kettlebells and land safely.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('incline push up depth jump','Other','Beginner','None',0.3,'The incline push up depth jump is a dynamic exercise that combines an incline push-up with a plyometric depth jump. It targets the chest, triceps, shoulders, and core, and requires both upper body strength and lower body explosiveness.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('jump squat v. 2','Other','Beginner','None',0.3,'The jump squat v. 2 is a plyometric lower body exercise that targets the glutes, quadriceps, hamstrings, and calves. It involves explosive jumping from a squat position and landing softly before repeating the movement.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('jump squat','Other','Beginner','None',0.3,'The jump squat is a plyometric exercise that targets the glutes and also works the quadriceps, hamstrings, and calves. It involves squatting down and then jumping explosively, making it effective for building lower body power and explosiveness.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('barbell jump squat','Other','Beginner','Barbell',0.3,'The barbell jump squat is a dynamic lower body exercise that combines the traditional squat with an explosive jump, performed while holding a barbell across the upper back. This exercise targets the glutes and also works the quadriceps, hamstrings, and calves. It is a plyometric movement that develops power, strength, and explosiveness in the legs.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('dumbbell plyo squat','Other','Beginner','Dumbbells',0.3,'The dumbbell plyo squat is a dynamic lower body exercise that combines a squat with a plyometric jump, performed while holding dumbbells. It targets the glutes, quadriceps, hamstrings, and calves, and requires explosive power, coordination, and balance.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('cable seated shoulder internal rotation','Other','Beginner','Machine',0.3,'The cable seated shoulder internal rotation is an isolation exercise targeting the deltoids and rotator cuff muscles. It is performed seated, using a cable machine to provide resistance as you internally rotate your shoulder.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('cable standing shoulder external rotation','Other','Beginner','Machine',0.3,'The cable standing shoulder external rotation is an exercise that targets the deltoid muscles, particularly focusing on shoulder stability and external rotation. It also engages the rotator cuff and trapezius muscles, making it effective for improving shoulder health and function.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('dumbbell lying external shoulder rotation','Other','Beginner','Dumbbells',0.3,'The dumbbell lying external shoulder rotation is an exercise that targets the deltoid muscles and the rotator cuff, helping to improve shoulder stability and strength. It is performed lying on your side, rotating the forearm upward while keeping the upper arm against the side.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('alternate lateral pulldown','Other','Beginner','Machine',0.3,'The alternate lateral pulldown is a cable machine exercise targeting the latissimus dorsi, with secondary emphasis on the biceps and rhomboids. It involves pulling handles towards the chest in an alternating fashion, focusing on back strength and muscle engagement.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('assisted chest dip (kneeling)','Other','Beginner','Machine',0.3,'The assisted chest dip (kneeling) is a chest-focused exercise performed on a leverage machine, where the user kneels on a pad for support. This machine-assisted variation helps reduce the load, making it accessible for those building strength or learning proper dip technique.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('assisted hanging knee raise with throw down','Other','Beginner','Machine',0.3,'The assisted hanging knee raise with throw down is an advanced core exercise that targets the abdominal muscles, with additional engagement of the hip flexors and lower back. The movement involves hanging from a pull-up bar, raising the knees to the chest, and then explosively throwing the legs downward, requiring significant core strength, coordination, and control.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('assisted hanging knee raise','Other','Beginner','Machine',0.3,'The assisted hanging knee raise is an abdominal exercise performed while hanging from a pull-up bar, using assistance to help lift the knees toward the chest. It primarily targets the abs and also works the hip flexors.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('45° side bend','Other','Beginner','None',0.3,'The 45° side bend is a bodyweight exercise targeting the abdominal muscles, particularly the obliques. It involves bending the torso to the side while standing, engaging the core for stability and control.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('air bike','Other','Beginner','None',0.3,'The air bike is a bodyweight exercise targeting the abdominal muscles and hip flexors. It involves a pedaling motion while lying on your back, alternating elbow-to-knee contact to engage the core.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('alternate heel touchers','Other','Beginner','None',0.3,'Alternate heel touchers is a bodyweight exercise targeting the abdominal muscles, particularly the obliques. It involves lying on your back, lifting your shoulders, and reaching side to side to touch your heels, engaging your core throughout.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('bench dip (knees bent)','Other','Beginner','None',0.3,'The bench dip (knees bent) is a bodyweight exercise that primarily targets the triceps, with secondary emphasis on the chest and shoulders. It is performed using a bench or chair and is suitable for building upper arm strength.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('barbell pullover to press','Other','Beginner','Barbell',0.3,'The barbell pullover to press is a compound exercise that targets the lats and also works the triceps, chest, and shoulders. It involves lowering a barbell behind your head while lying on a bench, then pressing it back up over your chest.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('barbell alternate biceps curl','Other','Beginner','Barbell',0.3,'The barbell alternate biceps curl is a strength exercise targeting the biceps, performed by alternately curling a barbell with each arm while standing. It also engages the forearms as secondary muscles.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('barbell bench front squat','Other','Beginner','Barbell',0.3,'The barbell bench front squat is a compound lower body exercise that targets the quadriceps, with secondary emphasis on the hamstrings, glutes, and calves. It requires holding a barbell in the front rack position and performing a squat, demanding good core stability, balance, and mobility.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('barbell bench press','Other','Beginner','Barbell',0.3,'The barbell bench press is a classic compound exercise that primarily targets the pectoral muscles, while also engaging the triceps and shoulders. It is performed by lying on a bench and pressing a barbell up and down in a controlled manner.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('front and back neck stretch','Other','Beginner','None',0.3,'Stand or sit tall and use your hand(s) to gently guide the head into forward flexion to stretch the back of the neck, then into slight extension to stretch the front of the neck. Move slowly and only to a mild, comfortable stretch.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('lying (side) quads stretch','Other','Beginner','None',0.3,'A static stretch performed lying on your side to target the quadriceps, often used to improve flexibility and reduce muscle tightness.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('overhead triceps stretch','Other','Beginner','None',0.3,'The overhead triceps stretch is a static stretching exercise that targets the triceps and also stretches the shoulders. It is performed by extending one arm overhead, bending at the elbow, and using the opposite hand to gently pull the elbow for a deeper stretch.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('rear deltoid stretch','Other','Beginner','None',0.3,'The rear deltoid stretch is a bodyweight exercise targeting the deltoid muscles, particularly the rear (posterior) delts. It also stretches the trapezius and rhomboids. This movement is commonly used to improve shoulder flexibility and relieve tension.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('barbell front chest squat','Strength','Intermediate','Barbell',0.35,'The barbell front chest squat is a compound lower body exercise that targets the glutes and also works the quadriceps, hamstrings, calves, and core. It involves holding a barbell at the front of the chest and performing a squat, which requires strength, balance, and proper technique.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.'),
  ('barbell front raise and pullover','Strength','Intermediate','Barbell',0.35,'The barbell front raise and pullover is a compound exercise targeting the pectorals, with secondary emphasis on the deltoids and triceps. It involves raising a barbell in front of the body and then performing a pullover motion behind the head, requiring strength, coordination, and shoulder mobility.','Keep proper form throughout the movement. Breathe consistently.','Avoid rushing the movement. Do not sacrifice form for heavier weight.');

INSERT INTO Target_Area (ExerciseID,Target_Area) VALUES
  (1,'Legs'),
  (2,'Shoulders'),
  (3,'Full Body'),
  (4,'Full Body'),
  (5,'Full Body'),
  (6,'Full Body'),
  (7,'Full Body'),
  (8,'Legs'),
  (9,'Chest'),
  (10,'Chest'),
  (11,'Legs'),
  (11,'Glutes'),
  (12,'Legs'),
  (12,'Glutes'),
  (13,'Legs'),
  (13,'Glutes'),
  (14,'Legs'),
  (14,'Glutes'),
  (15,'Shoulders'),
  (16,'Shoulders'),
  (17,'Shoulders'),
  (18,'Back'),
  (19,'Chest'),
  (20,'Core'),
  (21,'Core'),
  (22,'Core'),
  (23,'Core'),
  (24,'Core'),
  (25,'Arms'),
  (26,'Back'),
  (27,'Arms'),
  (28,'Legs'),
  (29,'Chest'),
  (30,'Neck'),
  (31,'Legs'),
  (32,'Arms'),
  (33,'Shoulders'),
  (34,'Legs'),
  (34,'Glutes'),
  (35,'Chest');

INSERT INTO Muscle_Group (ExerciseID,Muscle_Group) VALUES
  (1,'Quads'),
  (1,'Calves'),
  (1,'Hamstrings'),
  (2,'Delts'),
  (2,'Forearms'),
  (2,'Core'),
  (3,'Cardiovascular System'),
  (3,'Quadriceps'),
  (3,'Hamstrings'),
  (4,'Cardiovascular System'),
  (4,'Quadriceps'),
  (4,'Hamstrings'),
  (5,'Cardiovascular System'),
  (5,'Core'),
  (5,'Shoulders'),
  (6,'Cardiovascular System'),
  (6,'Quadriceps'),
  (6,'Hamstrings'),
  (7,'Cardiovascular System'),
  (7,'Quadriceps'),
  (7,'Hamstrings'),
  (8,'Calves'),
  (8,'Hamstrings'),
  (8,'Quadriceps'),
  (9,'Pectorals'),
  (9,'Triceps'),
  (9,'Shoulders'),
  (10,'Pectorals'),
  (10,'Triceps'),
  (10,'Shoulders'),
  (11,'Glutes'),
  (11,'Quadriceps'),
  (11,'Hamstrings'),
  (12,'Glutes'),
  (12,'Quadriceps'),
  (12,'Hamstrings'),
  (13,'Glutes'),
  (13,'Quadriceps'),
  (13,'Hamstrings'),
  (14,'Glutes'),
  (14,'Quadriceps'),
  (14,'Hamstrings'),
  (15,'Delts'),
  (15,'Rotator Cuff'),
  (15,'Triceps'),
  (16,'Delts'),
  (16,'Rotator Cuff'),
  (16,'Trapezius'),
  (17,'Delts'),
  (17,'Rotator Cuff'),
  (17,'Triceps'),
  (18,'Lats'),
  (18,'Biceps'),
  (18,'Rhomboids'),
  (19,'Pectorals'),
  (19,'Triceps'),
  (19,'Shoulders'),
  (20,'Abs'),
  (20,'Hip Flexors'),
  (20,'Lower Back'),
  (21,'Abs'),
  (21,'Hip Flexors'),
  (22,'Abs'),
  (22,'Obliques'),
  (23,'Abs'),
  (23,'Hip Flexors'),
  (24,'Abs'),
  (24,'Obliques'),
  (25,'Triceps'),
  (25,'Chest'),
  (25,'Shoulders'),
  (26,'Lats'),
  (26,'Triceps'),
  (26,'Chest'),
  (27,'Biceps'),
  (27,'Forearms'),
  (28,'Quads'),
  (28,'Hamstrings'),
  (28,'Glutes'),
  (29,'Pectorals'),
  (29,'Triceps'),
  (29,'Shoulders'),
  (30,'Levator Scapulae'),
  (30,'Upper Trapezius'),
  (30,'Sternocleidomastoid'),
  (31,'Quads'),
  (31,'Hamstrings'),
  (32,'Triceps'),
  (32,'Shoulders'),
  (33,'Delts'),
  (33,'Trapezius'),
  (33,'Rhomboids'),
  (34,'Glutes'),
  (34,'Quadriceps'),
  (34,'Hamstrings'),
  (35,'Pectorals'),
  (35,'Deltoids'),
  (35,'Triceps');

INSERT INTO Exercise_Video (ExerciseID, URL, Embedded_Code, Language)
SELECT ExerciseID, URL, Embedded_Code, Language
FROM (
    SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = '45° side bend'                          LIMIT 1) AS ExerciseID,
        'https://youtu.be/-aAhcIGcGh4?si=ZBVrspnM7YbYcZ2Q'                                                    AS URL,
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/-aAhcIGcGh4?si=onM5dimNX6TsdMTK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>' AS Embedded_Code,
        'en' AS Language

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'air bike'                                LIMIT 1),
        'https://youtu.be/KC-ZSfOmXgE?si=NsH_wzu4B3BYNor9',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/KC-ZSfOmXgE?si=NsH_wzu4B3BYNor9" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'alternate heel touchers'                 LIMIT 1),
        'https://youtu.be/9bR-elyolBQ?si=bHz_24SXKz8B3pO1',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/9bR-elyolBQ?si=bHz_24SXKz8B3pO1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'alternate lateral pulldown'              LIMIT 1),
        'https://youtu.be/QZ_UC5SjvK4?si=KJEQhayrbxzVMUUV',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/QZ_UC5SjvK4?si=KJEQhayrbxzVMUUV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'assisted chest dip (kneeling)'          LIMIT 1),
        'https://youtu.be/x0ZEwvJkLqE?si=hoqGISuPw0ijFIhK',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/x0ZEwvJkLqE?si=hoqGISuPw0ijFIhK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'assisted hanging knee raise'             LIMIT 1),
        'https://youtu.be/BGt7lMbUeRk?si=W5gMJ_A1yKsPXSGa',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/BGt7lMbUeRk?si=W5gMJ_A1yKsPXSGa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'assisted hanging knee raise with throw down' LIMIT 1),
        'https://youtu.be/VhKqEBB-Cg0?si=3yYWIXsd0ailaJNt',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/VhKqEBB-Cg0?si=3yYWIXsd0ailaJNt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'balance board'                           LIMIT 1),
        'https://youtu.be/Lx5ykCjizpk?si=3ru4hPNkt5HhiLwv',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/Lx5ykCjizpk?si=3ru4hPNkt5HhiLwv" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'barbell alternate biceps curl'           LIMIT 1),
        'https://youtu.be/GNO4OtYoCYk?si=Rcr0oMkzOf9lYvTk',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/GNO4OtYoCYk?si=Rcr0oMkzOf9lYvTk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'barbell bench front squat'               LIMIT 1),
        'https://youtu.be/HHxNbhP16UE?si=rOz-chsF7G_iOgK6',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/HHxNbhP16UE?si=rOz-chsF7G_iOgK6" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'barbell bench press'                     LIMIT 1),
        'https://youtu.be/lWFknlOTbyM?si=DLuGiCK88NUOK5IE',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/lWFknlOTbyM?si=DLuGiCK88NUOK5IE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'barbell front chest squat'               LIMIT 1),
        'https://youtu.be/7pyxT5hqmQY?si=a-85WBppD4l1PthS',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/7pyxT5hqmQY?si=a-85WBppD4l1PthS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'barbell front raise and pullover'        LIMIT 1),
        'https://youtu.be/OO8x69XwRZY?si=SfH3UzUmCELhtA1X',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/OO8x69XwRZY?si=SfH3UzUmCELhtA1X" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'barbell jump squat'                      LIMIT 1),
        'https://youtu.be/0pTBkUPuMkk?si=VzSRci-67isk_RC1',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/0pTBkUPuMkk?si=VzSRci-67isk_RC1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'barbell pullover to press'               LIMIT 1),
        'https://youtu.be/EJR8JKLfDrE?si=6nd-LCByL65dtSme',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/EJR8JKLfDrE?si=6nd-LCByL65dtSme" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'battling ropes'                          LIMIT 1),
        'https://youtu.be/zw0OMi00X5g?si=VvARhyO_L-fD_0uu',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/zw0OMi00X5g?si=VvARhyO_L-fD_0uu" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'bench dip (knees bent)'                  LIMIT 1),
        'https://youtu.be/GmKkXuFbH6I?si=xNr2oPa9BGyufuSv',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/GmKkXuFbH6I?si=xNr2oPa9BGyufuSv" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'cable seated shoulder internal rotation'  LIMIT 1),
        'https://youtu.be/m-41eHptImU?si=-FFJRvtihpQbuYmZ',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/m-41eHptImU?si=-FFJRvtihpQbuYmZ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'cable standing shoulder external rotation' LIMIT 1),
        'https://youtu.be/yyRk-8C8ZwE?si=EeDuUewCQvWRkKaN',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/yyRk-8C8ZwE?si=EeDuUewCQvWRkKaN" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'circles knee stretch'                    LIMIT 1),
        'https://youtu.be/m2FfJrJz62M?si=ZQw7DqeYnREjB1w8',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/m2FfJrJz62M?si=ZQw7DqeYnREjB1w8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'dumbbell lying external shoulder rotation' LIMIT 1),
        'https://youtu.be/brwBvldn4gw?si=qPEsAcBC_8iaJ20G',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/brwBvldn4gw?si=qPEsAcBC_8iaJ20G" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'dumbbell plyo squat'                     LIMIT 1),
        'https://youtu.be/vOlUuwEU8Us?si=IhXL0AYkGlwYbNLJ',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/vOlUuwEU8Us?si=IhXL0AYkGlwYbNLJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'front and back neck stretch'             LIMIT 1),
        'https://youtu.be/mgpjd4JMSZg?si=rt0uuTXL6kUKWX9m',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/mgpjd4JMSZg?si=rt0uuTXL6kUKWX9m" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'incline push up depth jump'              LIMIT 1),
        'https://youtu.be/c46GPLerT4A?si=70leqm7kVhQ3_qKz',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/c46GPLerT4A?si=70leqm7kVhQ3_qKz" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'jack burpee'                             LIMIT 1),
        'https://youtu.be/XUuFURsb9-c?si=TtMt9zXeEj-YDoab',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/XUuFURsb9-c?si=TtMt9zXeEj-YDoab" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'jump squat'                              LIMIT 1),
        'https://youtu.be/5xv0DKqe5XQ?si=Tvv1wu6A_TQpUE5F',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/5xv0DKqe5XQ?si=Tvv1wu6A_TQpUE5F" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'jump squat v. 2'                         LIMIT 1),
        'https://youtu.be/BRfxI2Es2lE?si=ItkPHyJ1zmKn1Ha3',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/BRfxI2Es2lE?si=ItkPHyJ1zmKn1Ha3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'kettlebell plyo push-up'                 LIMIT 1),
        'https://youtu.be/sYGjmMnF4-I?si=o-J8Z7Fg4QzRF32P',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/sYGjmMnF4-I?si=o-J8Z7Fg4QzRF32P" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'lying (side) quads stretch'              LIMIT 1),
        'https://youtu.be/Z9NPI_3HXUY?si=UfOzCkl5q5CRq3ml',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/Z9NPI_3HXUY?si=UfOzCkl5q5CRq3ml" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'mountain climber'                        LIMIT 1),
        'https://youtu.be/wQq3ybaLZeA?si=9Em0jF7OqoKNY7Eu',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/wQq3ybaLZeA?si=9Em0jF7OqoKNY7Eu" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'overhead triceps stretch'                LIMIT 1),
        'https://youtu.be/qsyrvNY8uBA?si=1SjT8jx1dLKXhtCR',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/qsyrvNY8uBA?si=1SjT8jx1dLKXhtCR" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'rear deltoid stretch'                    LIMIT 1),
        'https://youtu.be/OvOSGeU55C0?si=IX4IJg9Hab2whgCW',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/OvOSGeU55C0?si=IX4IJg9Hab2whgCW" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'run'                                     LIMIT 1),
        'https://youtu.be/c1mBu4tK90k?si=vFWVWJlmqIyF5Wdm',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/c1mBu4tK90k?si=vFWVWJlmqIyF5Wdm" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'run (equipment)'                         LIMIT 1),
        'https://youtu.be/Nx3fEwjLtUQ?si=p_BzVEKYlIYuJ4eI',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/Nx3fEwjLtUQ?si=p_BzVEKYlIYuJ4eI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'

    UNION ALL SELECT
        (SELECT ExerciseID FROM Exercise WHERE Exercise_Name = 'stationary bike walk'                    LIMIT 1),
        'https://youtu.be/8eQudE_LEPA?si=lZ4A-LSbfa7tWGxE',
        '<iframe width="560" height="315" src="https://www.youtube.com/embed/8eQudE_LEPA?si=lZ4A-LSbfa7tWGxE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
        'en'
) AS video_data
WHERE ExerciseID IS NOT NULL;

DROP TRIGGER IF EXISTS trg_WorkoutPlan_DeactivateOld;

INSERT INTO Workout_Plan (UserID,Title,Goal,Plan_Type,Is_Active,Start_Date,End_Date) VALUES
  (1,'Ali 12-Week Muscle Builder','Muscle Gain','Gym',0,'2024-09-01','2024-11-24'),
  (2,'Sara Fat Loss Kickstart','Weight Loss','Home',0,'2024-10-01','2024-12-24'),
  (3,'Sara Cardio & Tone Plan','Weight Loss','Home',0,'2024-12-25','2024-12-31'),
  (1,'Ali Home Strength Program','Muscle Gain','Home',1,'2025-01-06','2025-03-30'),
  (2,'Sara Cardio & Tone Plan','Weight Loss','Home',1,'2025-01-06','2025-03-30'),
  (3,'Ahmed Beginner Weight Loss','Weight Loss','Home',1,'2025-01-13','2025-04-06'),
  (4,'Fatima Endurance Elite','Maintain Fitness','Gym',1,'2025-01-06','2025-03-30'),
  (5,'Usman Advanced Powerlifting','Muscle Gain','Gym',1,'2025-01-06','2025-04-27'),
  (6,'Ayesha General Wellness','General Health','Home',1,'2025-01-13','2025-04-06'),
  (7,'Bilal Starter Fitness','General Health','Home',1,'2025-01-06','2025-03-02'),
  (8,'Zara Marathon Prep','Improve Endurance','Gym',1,'2025-01-06','2025-04-27'),
  (9,'Hamza Weight Loss Gym Plan','Weight Loss','Gym',1,'2025-01-13','2025-04-06'),
  (10,'Nadia Maintenance & Flexibility','Maintain Fitness','Home',1,'2025-01-06','2025-03-30'),
  (11,'Omar Hypertrophy Program','Muscle Gain','Gym',1,'2025-01-06','2025-04-27'),
  (12,'Sana Body Recomposition','Weight Loss','Home',1,'2025-01-13','2025-04-06'),
  (13,'Imran Sedentary to Active','Weight Loss','Home',1,'2025-01-06','2025-07-06'),
  (14,'Hira Balanced Fitness','General Health','Home',1,'2025-01-13','2025-04-06'),
  (15,'Asad Triathlon Training','Improve Endurance','Gym',1,'2025-01-06','2025-04-27'),
  (16,'Mariam Full Body Tone','Maintain Fitness','Home',1,'2025-01-13','2025-03-30'),
  (17,'Faisal Beginner Gym','Weight Loss','Gym',1,'2025-01-06','2025-04-27'),
  (18,'Amna Vegan Fit Plan','General Health','Home',1,'2025-01-13','2025-04-06'),
  (19,'Danish Strength & Size','Muscle Gain','Gym',1,'2025-01-06','2025-04-27'),
  (20,'Komal Home Cardio Blast','Weight Loss','Home',1,'2025-01-13','2025-04-06'),
  (21,'Tariq Intermediate Gym','Weight Loss','Gym',1,'2025-01-06','2025-03-30'),
  (22,'Saima Low Impact Fitness','General Health','Home',1,'2025-01-13','2025-04-06'),
  (23,'Rizwan Upper Lower Split','Muscle Gain','Gym',1,'2025-01-06','2025-03-30'),
  (24,'Lubna Endurance Builder','Improve Endurance','Home',1,'2025-01-13','2025-04-06'),
  (25,'Kamran Beginner Walking Plan','Weight Loss','Home',1,'2025-01-06','2025-07-06'),
  (26,'Rabia Flexibility Focus','General Health','Home',1,'2025-01-13','2025-03-09'),
  (27,'Shahid Gym Weight Loss','Weight Loss','Gym',1,'2025-01-06','2025-04-27'),
  (28,'Noor Muscle Building Elite','Muscle Gain','Gym',1,'2025-01-13','2025-05-04'),
  (29,'Adeel Weekend Warrior','General Health','Home',1,'2025-01-06','2025-03-30'),
  (30,'Mehwish Yoga & Pilates','Maintain Fitness','Home',1,'2025-01-13','2025-04-06');

DELIMITER $$
CREATE TRIGGER trg_WorkoutPlan_DeactivateOld
BEFORE INSERT ON Workout_Plan
FOR EACH ROW
BEGIN
    IF NEW.Is_Active = 1 THEN
        UPDATE Workout_Plan
        SET Is_Active = 0
        WHERE UserID = NEW.UserID
          AND Is_Active = 1;
    END IF;
END$$
DELIMITER ;

INSERT INTO Workout_Day (WorkoutPlanID,Day_Number,Day_Name,Focus_Area,Session_Duration,Calories_Estimate,Is_Rest_Day,Notes) VALUES
  (1,1,'Monday','Chest & Triceps',60,400,0,NULL),
  (1,2,'Tuesday','Back & Biceps',60,380,0,NULL),
  (1,3,'Wednesday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (1,4,'Thursday','Shoulders & Arms',55,350,0,NULL),
  (1,5,'Friday','Legs & Glutes',65,450,0,NULL),
  (1,6,'Saturday','HIIT Cardio',45,500,0,NULL),
  (1,7,'Sunday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (2,1,'Monday','Upper Body Strength',50,350,0,NULL),
  (2,2,'Tuesday','Lower Body Strength',50,400,0,NULL),
  (2,3,'Wednesday','Core & Cardio',40,300,0,NULL),
  (2,4,'Thursday','Full Body',55,380,0,NULL),
  (2,5,'Friday','Upper Body',50,350,0,NULL),
  (2,6,'Saturday','Active Recovery',30,150,0,NULL),
  (2,7,'Sunday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (3,1,'Monday','Cardio Walk',30,200,0,NULL),
  (3,2,'Tuesday','Full Body Strength',40,280,0,NULL),
  (3,3,'Wednesday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (3,4,'Thursday','Cardio HIIT',35,320,0,NULL),
  (3,5,'Friday','Core & Flexibility',35,200,0,NULL),
  (3,6,'Saturday','Full Body',40,280,0,NULL),
  (3,7,'Sunday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (4,1,'Monday','Lower Body',45,320,0,NULL),
  (4,2,'Tuesday','Core & Flexibility',40,250,0,NULL),
  (4,3,'Wednesday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (4,4,'Thursday','Upper Body Cardio',50,380,0,NULL),
  (4,5,'Friday','Full Body Endurance',60,420,0,NULL),
  (4,6,'Saturday','Yoga & Stretch',40,180,0,NULL),
  (4,7,'Sunday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (5,1,'Monday','Squat Day',90,600,0,NULL),
  (5,2,'Tuesday','Bench & Push',80,550,0,NULL),
  (5,3,'Wednesday','Deadlift Day',90,620,0,NULL),
  (5,4,'Thursday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (5,5,'Friday','Overhead Press',75,500,0,NULL),
  (5,6,'Saturday','Accessory Work',60,400,0,NULL),
  (5,7,'Sunday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (6,1,'Monday','Full Body Light',40,250,0,NULL),
  (6,2,'Tuesday','Yoga',45,200,0,NULL),
  (6,3,'Wednesday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (6,4,'Thursday','Strength Basics',45,280,0,NULL),
  (6,5,'Friday','Cardio Walk',30,200,0,NULL),
  (6,6,'Saturday','Stretching',30,150,0,NULL),
  (6,7,'Sunday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (7,1,'Monday','Upper Body',40,280,0,NULL),
  (7,2,'Tuesday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (7,3,'Wednesday','Lower Body',40,300,0,NULL),
  (7,4,'Thursday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (7,5,'Friday','Full Body',45,320,0,NULL),
  (7,6,'Saturday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (7,7,'Sunday','Active Recovery',30,150,0,NULL),
  (8,1,'Monday','Long Run',90,700,0,NULL),
  (8,2,'Tuesday','Speed Work',60,550,0,NULL),
  (8,3,'Wednesday',NULL,NULL,NULL,1,'Rest and recover today.'),
  (8,4,'Thursday','Tempo Run',60,520,0,NULL),
  (8,5,'Friday','Strength & Core',50,350,0,NULL),
  (8,6,'Saturday','Long Run',100,750,0,NULL),
  (8,7,'Sunday',NULL,NULL,NULL,1,'Rest and recover today.');

INSERT INTO Workout_Plan_Exercise (WorkoutDayID,ExerciseID,Setss,Reps,Rest_Time_Seconds,Intensity,Order_In_Day) VALUES
  (1,19,4,10,90,'High',1),
  (1,4,3,12,60,'High',2),
  (1,7,3,15,60,'Medium',3),
  (2,3,4,10,90,'High',1),
  (2,17,3,12,60,'Medium',2),
  (2,16,3,10,90,'High',3),
  (4,13,4,10,90,'High',1),
  (4,14,3,12,60,'Medium',2),
  (4,21,3,15,60,'Medium',3),
  (5,18,4,10,90,'High',1),
  (5,15,3,12,60,'Medium',2),
  (5,32,3,15,60,'Medium',3),
  (6,31,3,20,30,'High',1),
  (6,26,3,15,30,'High',2),
  (6,29,1,15,60,'High',3),
  (8,19,3,12,60,'Medium',1),
  (8,13,3,12,60,'Medium',2),
  (8,2,3,15,45,'Low',3),
  (9,18,3,12,60,'Medium',1),
  (9,15,3,12,60,'Medium',2),
  (9,5,3,15,45,'Low',3),
  (10,26,3,20,30,'Medium',1),
  (10,1,3,15,30,'Low',2),
  (10,30,2,30,60,'Low',3),
  (11,19,3,10,60,'Medium',1),
  (11,18,3,10,60,'Medium',2),
  (11,13,3,10,60,'Medium',3),
  (12,19,3,12,60,'Medium',1),
  (12,4,3,12,60,'Medium',2),
  (12,17,3,10,60,'Medium',3),
  (15,26,3,20,45,'Low',1),
  (15,31,2,10,60,'Low',2),
  (15,29,1,5,120,'Low',3),
  (16,7,3,12,60,'Low',1),
  (16,5,3,10,60,'Low',2),
  (16,2,3,15,45,'Low',3),
  (18,31,3,15,30,'Medium',1),
  (18,26,3,20,30,'Medium',2),
  (18,1,3,15,30,'Low',3),
  (19,22,2,10,60,'Low',1),
  (19,27,2,15,45,'Low',2),
  (19,33,2,20,30,'Low',3),
  (20,7,3,12,60,'Low',1),
  (20,6,3,10,60,'Low',2),
  (20,3,3,15,45,'Low',3),
  (22,15,4,12,60,'Medium',1),
  (22,32,3,12,60,'Medium',2),
  (22,34,3,20,30,'Low',3),
  (23,27,3,15,45,'Low',1),
  (23,33,3,20,30,'Low',2),
  (23,22,2,10,60,'Low',3),
  (25,26,3,15,30,'Medium',1),
  (25,31,3,20,30,'Medium',2),
  (25,29,2,15,45,'Medium',3),
  (26,19,4,10,90,'High',1),
  (26,4,4,8,90,'High',2),
  (26,17,4,10,90,'High',3),
  (29,18,5,5,180,'High',1),
  (29,15,4,8,120,'High',2),
  (29,32,3,10,90,'High',3),
  (30,19,5,5,180,'High',1),
  (30,4,4,8,120,'High',2),
  (30,7,3,12,90,'Medium',3),
  (31,11,5,3,180,'High',1),
  (31,18,4,5,120,'High',2),
  (31,15,4,8,90,'High',3),
  (33,13,5,8,120,'High',1),
  (33,16,4,10,90,'High',2),
  (33,17,4,10,90,'High',3),
  (34,12,3,10,60,'Medium',1),
  (34,20,3,12,60,'Medium',2),
  (34,25,3,15,45,'Medium',3),
  (36,7,3,12,60,'Low',1),
  (36,2,3,15,45,'Low',2),
  (36,6,2,10,60,'Low',3),
  (37,27,3,15,45,'Low',1),
  (37,33,3,20,30,'Low',2),
  (37,22,2,10,60,'Low',3),
  (39,7,3,12,60,'Low',1),
  (39,5,3,10,60,'Low',2),
  (39,2,3,15,45,'Low',3),
  (40,26,2,15,30,'Low',1),
  (40,31,2,10,60,'Low',2),
  (41,27,2,15,45,'Low',1),
  (41,22,2,10,60,'Low',2),
  (43,19,3,12,60,'Medium',1),
  (43,4,3,10,60,'Medium',2),
  (43,17,3,10,60,'Medium',3),
  (45,18,3,12,60,'Medium',1),
  (45,15,3,10,60,'Medium',2),
  (45,32,3,12,60,'Medium',3),
  (47,7,3,12,60,'Medium',1),
  (47,19,3,10,60,'Medium',2),
  (47,18,3,10,60,'Medium',3),
  (49,30,2,20,30,'Low',1),
  (49,27,2,15,30,'Low',2),
  (50,29,1,30,60,'High',1),
  (50,26,2,20,30,'Medium',2),
  (50,31,2,15,45,'Medium',3),
  (51,29,1,20,60,'High',1),
  (51,8,2,15,30,'High',2),
  (51,9,2,15,30,'High',3),
  (53,29,1,25,60,'High',1),
  (53,26,2,20,30,'Medium',2),
  (54,7,3,12,60,'Medium',1),
  (54,2,3,15,45,'Low',2),
  (54,5,3,10,60,'Medium',3),
  (55,29,1,30,60,'High',1),
  (55,8,2,20,30,'High',2),
  (55,9,2,20,30,'High',3),
  (56,29,1,30,60,'High',1),
  (56,26,2,20,30,'Medium',2),
  (56,31,2,15,45,'Medium',3);

DROP TRIGGER IF EXISTS trg_DietPlan_DeactivateOld;
  INSERT INTO Diet_Plan (UserID,Title,Plan_Type,Daily_Calorie_Target,Protein_Target,Carb_Target,Fat_Target,Duration_Weeks,Cultural_Preference,Budget_Level,Start_Date) VALUES
  (1,'Ali Muscle Gain Diet','Muscle Gain',2800,200.0,300.0,80.0,12,'Pakistani/South Asian','Medium','2025-01-06'),
  (2,'Sara Weight Loss Diet','Weight Loss',1500,120.0,150.0,45.0,12,'Pakistani/South Asian','Low','2025-01-06'),
  (3,'Ahmed Caloric Deficit Plan','Weight Loss',1600,130.0,160.0,48.0,16,'Pakistani/South Asian','Low','2025-01-13'),
  (4,'Fatima Maintenance Plan','Maintenance',2000,140.0,230.0,60.0,12,'Pakistani/South Asian','Medium','2025-01-06'),
  (5,'Usman Powerlifter Nutrition','Muscle Gain',3200,250.0,350.0,95.0,20,'Pakistani/South Asian','High','2025-01-06'),
  (6,'Ayesha Balanced Vegetarian','Maintenance',1800,100.0,220.0,55.0,12,'Pakistani/South Asian','Medium','2025-01-13'),
  (7,'Bilal Everyday Healthy Eating','Maintenance',2200,150.0,250.0,65.0,12,'Pakistani/South Asian','Low','2025-01-06'),
  (8,'Zara Vegan Endurance Diet','Muscle Gain',2400,160.0,310.0,60.0,20,'Other','Medium','2025-01-06'),
  (9,'Hamza Gym Weight Loss','Weight Loss',1800,160.0,170.0,55.0,16,'Pakistani/South Asian','Medium','2025-01-13'),
  (10,'Nadia Low Impact Maintenance','Maintenance',1900,120.0,230.0,58.0,12,'Western','Medium','2025-01-06'),
  (11,'Omar Hypertrophy Nutrition','Muscle Gain',3000,230.0,330.0,88.0,20,'Western','High','2025-01-06'),
  (12,'Sana Body Recomp Diet','Weight Loss',1550,130.0,155.0,48.0,12,'Pakistani/South Asian','Low','2025-01-13'),
  (13,'Imran Gradual Deficit Plan','Weight Loss',1700,130.0,190.0,50.0,24,'Pakistani/South Asian','Low','2025-01-06'),
  (14,'Hira General Healthy Diet','Maintenance',1950,130.0,235.0,58.0,12,'Pakistani/South Asian','Medium','2025-01-13'),
  (15,'Asad Triathlete Fuel Plan','Muscle Gain',3100,210.0,380.0,78.0,20,'Mediterranean','High','2025-01-06'),
  (16,'Mariam Toning Diet','Maintenance',2000,140.0,240.0,60.0,12,'Pakistani/South Asian','Medium','2025-01-13'),
  (17,'Faisal Calorie Cut Plan','Weight Loss',1650,135.0,170.0,50.0,20,'Pakistani/South Asian','Low','2025-01-06'),
  (18,'Amna Vegan Wellness Diet','Maintenance',1900,110.0,255.0,52.0,12,'Other','Medium','2025-01-13'),
  (19,'Danish Bulking Diet','Muscle Gain',3400,260.0,380.0,100.0,20,'Pakistani/South Asian','High','2025-01-06'),
  (20,'Komal VLCD Plan','Weight Loss',1300,110.0,130.0,40.0,12,'Pakistani/South Asian','Low','2025-01-13'),
  (21,'Tariq Steady Loss Plan','Weight Loss',1750,140.0,185.0,52.0,12,'Pakistani/South Asian','Medium','2025-01-06'),
  (22,'Saima Gentle Eating Plan','Maintenance',1850,110.0,230.0,55.0,12,'Pakistani/South Asian','Low','2025-01-13'),
  (23,'Rizwan Split Nutrition','Muscle Gain',2900,220.0,315.0,85.0,12,'Pakistani/South Asian','Medium','2025-01-06'),
  (24,'Lubna Endurance Fueling','Muscle Gain',2500,170.0,320.0,65.0,12,'Pakistani/South Asian','Medium','2025-01-13'),
  (25,'Kamran Step-by-Step Diet','Weight Loss',1600,120.0,175.0,48.0,24,'Pakistani/South Asian','Low','2025-01-06'),
  (26,'Rabia Vegetarian Light','Maintenance',1750,100.0,220.0,52.0,8,'Pakistani/South Asian','Low','2025-01-13'),
  (27,'Shahid GymGoer Fat Loss','Weight Loss',1900,155.0,195.0,58.0,20,'Pakistani/South Asian','Medium','2025-01-06'),
  (28,'Noor Elite Athlete Diet','Muscle Gain',3000,235.0,330.0,90.0,16,'Pakistani/South Asian','High','2025-01-13'),
  (29,'Adeel Weekend Nutrition','Maintenance',2100,140.0,255.0,62.0,12,'Pakistani/South Asian','Low','2025-01-06'),
  (30,'Mehwish Yoga Diet','Maintenance',1800,110.0,230.0,55.0,12,'Pakistani/South Asian','Medium','2025-01-13');

DELIMITER $$
CREATE TRIGGER trg_DietPlan_DeactivateOld
BEFORE INSERT ON Diet_Plan
FOR EACH ROW
BEGIN
    IF NEW.Is_Active = 1 THEN
        UPDATE Diet_Plan
        SET Is_Active = 0
        WHERE UserID = NEW.UserID
          AND Is_Active = 1;
    END IF;
END$$
DELIMITER ;

INSERT INTO Diet_Day (DietPlanID,Day_Number,Day_Name,Total_Calories,Notes) VALUES
  (1,1,'Monday',2820,NULL),
  (1,2,'Tuesday',2780,NULL),
  (1,3,'Wednesday',2800,NULL),
  (1,4,'Thursday',2800,NULL),
  (1,5,'Friday',2760,NULL),
  (1,6,'Saturday',2810,NULL),
  (1,7,'Sunday',2800,NULL),
  (2,1,'Monday',1510,NULL),
  (2,2,'Tuesday',1490,NULL),
  (2,3,'Wednesday',1500,NULL),
  (2,4,'Thursday',1520,NULL),
  (2,5,'Friday',1480,NULL),
  (2,6,'Saturday',1510,NULL),
  (2,7,'Sunday',1490,NULL),
  (3,1,'Monday',1610,NULL),
  (3,2,'Tuesday',1590,NULL),
  (3,3,'Wednesday',1600,NULL),
  (3,4,'Thursday',1620,NULL),
  (3,5,'Friday',1580,NULL),
  (3,6,'Saturday',1610,NULL),
  (3,7,'Sunday',1590,NULL),
  (4,1,'Monday',2010,NULL),
  (4,2,'Tuesday',1990,NULL),
  (4,3,'Wednesday',2000,NULL),
  (4,4,'Thursday',2010,NULL),
  (4,5,'Friday',1980,NULL),
  (4,6,'Saturday',2010,NULL),
  (4,7,'Sunday',2000,NULL),
  (5,1,'Monday',3220,NULL),
  (5,2,'Tuesday',3180,NULL),
  (5,3,'Wednesday',3200,NULL),
  (5,4,'Thursday',3220,NULL),
  (5,5,'Friday',3180,NULL),
  (5,6,'Saturday',3220,NULL),
  (5,7,'Sunday',3200,NULL),
  (6,1,'Monday',1810,NULL),
  (6,2,'Tuesday',1790,NULL),
  (6,3,'Wednesday',1800,NULL),
  (6,4,'Thursday',1820,NULL),
  (6,5,'Friday',1780,NULL),
  (6,6,'Saturday',1810,NULL),
  (6,7,'Sunday',1800,NULL),
  (7,1,'Monday',2210,NULL),
  (7,2,'Tuesday',2190,NULL),
  (7,3,'Wednesday',2200,NULL),
  (7,4,'Thursday',2220,NULL),
  (7,5,'Friday',2180,NULL),
  (7,6,'Saturday',2210,NULL),
  (7,7,'Sunday',2200,NULL),
  (8,1,'Monday',2420,NULL),
  (8,2,'Tuesday',2380,NULL),
  (8,3,'Wednesday',2400,NULL),
  (8,4,'Thursday',2420,NULL),
  (8,5,'Friday',2380,NULL),
  (8,6,'Saturday',2420,NULL),
  (8,7,'Sunday',2400,NULL),
  (9,1,'Monday',1810,NULL),
  (9,2,'Tuesday',1790,NULL),
  (9,3,'Wednesday',1800,NULL),
  (9,4,'Thursday',1820,NULL),
  (9,5,'Friday',1780,NULL),
  (9,6,'Saturday',1810,NULL),
  (9,7,'Sunday',1800,NULL),
  (10,1,'Monday',1910,NULL),
  (10,2,'Tuesday',1890,NULL),
  (10,3,'Wednesday',1900,NULL),
  (10,4,'Thursday',1920,NULL),
  (10,5,'Friday',1880,NULL),
  (10,6,'Saturday',1910,NULL),
  (10,7,'Sunday',1900,NULL);

INSERT INTO Meal (DietDayID,Meal_Type,Meal_Name,Calories,Protein,Carbs,Fats,Order_In_Day) VALUES
  (1,'Breakfast','Oatmeal with Banana & Honey',380,12.0,72.0,6.0,1),
  (1,'Lunch','Indian Chicken Curry (Murgh Kari)',520,42.0,35.0,22.0,2),
  (1,'Pre-Workout','Peanut Butter Banana Smoothie',280,12.0,38.0,8.0,3),
  (1,'Post-Workout','Chicken Tikka Masala with Rice',620,52.0,68.0,14.0,4),
  (1,'Dinner','Grilled Chicken Breasts with Veggies',480,48.0,30.0,18.0,5),
  (1,'Snack','Mixed Nuts & Dried Fruits',200,6.0,22.0,12.0,6),
  (2,'Breakfast','Eggs & Whole Wheat Toast',350,22.0,30.0,14.0,1),
  (2,'Lunch','Chicken Stir-Fry with Rice',510,40.0,58.0,12.0,2),
  (2,'Snack','Greek Yogurt with Berries',180,16.0,22.0,3.0,3),
  (2,'Dinner','Baked Garlic Parmesan Chicken',480,45.0,25.0,20.0,4),
  (2,'Post-Workout','Protein Shake with Milk',240,30.0,28.0,5.0,5),
  (3,'Breakfast','Avocado Toast with Poached Eggs',420,18.0,38.0,22.0,1),
  (3,'Lunch','Chicken Katsu with Steamed Rice',540,44.0,60.0,14.0,2),
  (3,'Dinner','Simple Baked Chicken Breasts with Salad',460,50.0,20.0,18.0,3),
  (3,'Snack','Protein Bar',220,20.0,25.0,6.0,4),
  (3,'Pre-Workout','Banana & Coffee',180,3.0,42.0,1.0,5),
  (4,'Breakfast','Chocolate Protein Pancakes',410,28.0,48.0,10.0,1),
  (4,'Lunch','Chicken Marsala with Pasta',530,42.0,55.0,16.0,2),
  (4,'Snack','Cottage Cheese & Pineapple',200,18.0,24.0,4.0,3),
  (4,'Dinner','Chicken Quesadillas',490,40.0,45.0,18.0,4),
  (4,'Post-Workout','Chocolate Milk',230,10.0,32.0,8.0,5),
  (5,'Breakfast','Smoothie Bowl with Granola',360,14.0,62.0,8.0,1),
  (5,'Lunch','Jambalaya',510,38.0,58.0,14.0,2),
  (5,'Pre-Workout','Rice Cakes with Almond Butter',240,8.0,34.0,9.0,3),
  (5,'Dinner','Chicken Souvlaki with Tzatziki',480,46.0,32.0,18.0,4),
  (5,'Snack','Hard Boiled Eggs',140,12.0,2.0,10.0,5),
  (6,'Breakfast','French Toast with Maple Syrup',380,14.0,58.0,10.0,1),
  (6,'Lunch','Kung Pao Chicken with Noodles',520,42.0,52.0,18.0,2),
  (6,'Dinner','Lemon Chicken Piccata',460,48.0,24.0,18.0,3),
  (6,'Snack','Protein Ice Cream',180,15.0,22.0,4.0,4),
  (6,'Post-Workout','Banana Protein Shake',260,28.0,30.0,5.0,5),
  (7,'Breakfast','Full Pakistani Breakfast',450,22.0,50.0,18.0,1),
  (7,'Lunch','Chicken Tikka Masala',530,44.0,40.0,22.0,2),
  (7,'Dinner','Curry Stand Chicken Tikka Masala',580,48.0,45.0,24.0,3),
  (7,'Snack','Fruit Salad with Honey',160,3.0,38.0,1.0,4),
  (8,'Breakfast','Vegetable Omelette',280,18.0,12.0,16.0,1),
  (8,'Lunch','Grilled Chicken Salad',320,35.0,18.0,12.0,2),
  (8,'Dinner','Baked Honey Mustard Chicken with Broccoli',380,42.0,22.0,14.0,3),
  (8,'Snack','Apple with Peanut Butter',180,5.0,28.0,8.0,4),
  (9,'Breakfast','Greek Yogurt Parfait',260,20.0,32.0,6.0,1),
  (9,'Lunch','Easy White Chicken Chili',350,38.0,28.0,10.0,2),
  (9,'Dinner','Blackened Chicken with Sweet Potato',390,44.0,30.0,12.0,3),
  (9,'Snack','Carrot Sticks with Hummus',120,5.0,18.0,4.0,4),
  (10,'Breakfast','Whole Grain Cereal with Skimmed Milk',280,14.0,48.0,4.0,1),
  (10,'Lunch','Chicken Noodle Soup',310,28.0,32.0,8.0,2),
  (10,'Dinner','Salsa Chicken with Cauliflower Rice',350,40.0,18.0,12.0,3),
  (10,'Snack','Protein Shake (Water)',160,26.0,8.0,2.0,4),
  (11,'Breakfast','Scrambled Eggs with Spinach',290,20.0,10.0,18.0,1),
  (11,'Lunch','Chicken Fajita Bowl',370,38.0,35.0,12.0,2),
  (11,'Dinner','Crispy Panko Chicken with Green Beans',380,44.0,24.0,14.0,3),
  (11,'Snack','Mixed Berries',100,2.0,24.0,1.0,4),
  (12,'Breakfast','Overnight Oats',310,14.0,52.0,6.0,1),
  (12,'Lunch','Grilled Chicken Marinade with Salad',340,40.0,18.0,12.0,2),
  (12,'Dinner','Parmesan Crusted Chicken with Asparagus',370,46.0,20.0,14.0,3),
  (12,'Snack','Fat Free Cottage Cheese',130,18.0,8.0,1.0,4),
  (13,'Breakfast','Veggie Smoothie',240,10.0,42.0,4.0,1),
  (13,'Lunch','Chicken Enchiladas (small portion)',380,35.0,38.0,12.0,2),
  (13,'Dinner','Blackened Chicken Strips',360,46.0,18.0,14.0,3),
  (13,'Snack','Rice Cake with Low-Fat Cheese',140,8.0,20.0,3.0,4),
  (14,'Breakfast','Poached Eggs on Rye Toast',290,18.0,28.0,10.0,1),
  (14,'Lunch','Mulligatawny Soup',310,22.0,38.0,8.0,2),
  (14,'Dinner','Grilled Asian Chicken with Bok Choy',350,42.0,20.0,12.0,3),
  (14,'Snack','Edamame',120,10.0,10.0,5.0,4);

INSERT INTO Recipe (MealID, Instructions, Preparation_Time, Cooking_Time) VALUES
  (2, 'Sprinkle the chicken breasts with 2 teaspoons salt. Heat oil in a large skillet over high heat; partially cook the chicken in the hot oil in batches until completely browned on all sides. Transfer browned chicken breasts to a plate and set aside. Reduce the heat to medium and add onion, garlic, and ginger to the oil remaining in the skillet. Cook and stir until onion turns soft and translucent, 5 to 8 minutes. Stir curry powder, cumin, turmeric, coriander, cayenne, and 1 tablespoon of water into the onion mixture; allow to heat together for about 1 minute while stirring. Add tomatoes, yogurt, 1 tablespoon chopped cilantro, and 1 teaspoon salt to the mixture; stir to combine. Return chicken breast to the skillet along with any juices on the plate. Pour in 1/2 cup water and bring to a boil, turning the chicken to coat with the sauce. Sprinkle garam masala and 1 tablespoon cilantro over the chicken. Cover the skillet and simmer until chicken breasts are no longer pink in the center and the juices run clear, about 20 minutes. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C). Drizzle with lemon juice to serve.', 20, 40),
  (8, 'Bring water and rice to a boil in a saucepan over high heat. Reduce heat to medium-low, cover, and simmer until rice is tender, and liquid has been absorbed, 20 to 25 minutes. Meanwhile, combine soy sauce, brown sugar, and cornstarch in a medium glass or ceramic bowl; stir until smooth. Stir in ginger, garlic, and red pepper flakes; add chicken and stir to coat. Cover and marinate in the refrigerator for at least 15 minutes. Heat 1 tablespoon sesame oil in a wok or large skillet over medium-high heat. Add broccoli, onion, carrots, water chestnuts, and bell pepper; cook and stir until just tender, about 5 minutes. Transfer vegetables into a dish; set aside. Heat remaining 1 tablespoon sesame oil in the same wok or skillet over medium-high heat. Add chicken, reserving marinade, and cook until just browned, about 2 minutes per side; stir in vegetables and reserved marinade. Bring to a boil; cook and stir until chicken is no longer pink in the center and vegetables are tender, 5 to 7 minutes. Serve over rice.', 20, 20),
  (13, 'Season the chicken breasts on both sides with salt and pepper. Place the flour, egg and panko crumbs into separate shallow dishes. Coat the chicken breasts in flour, shaking off any excess. Dip them into the egg, and then press into the panko crumbs until well coated on both sides. Heat 1/4 inch of oil in a large skillet over medium-high heat. Place chicken in the hot oil, and cook 3 or 4 minutes per side, or until golden brown.', 10, 10),
  (5, 'Preheat the oven to 400 degrees F (200 degrees C). Rub chicken breasts with olive oil and sprinkle both sides with salt and Creole seasoning. Place chicken in a broiler pan. Bake in the preheated oven for 10 minutes. Flip chicken and cook until no longer pink in the center and the juices run clear, about 15 minutes more. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C). Remove chicken to a plate. Pour chicken broth into the pan and scrape any browned bits off the bottom with a flat-edged wooden spatula. Add more broth if needed to dislodge the browned bits, but not too much or it will be watery. To serve, drizzle the pan sauce over the chicken.', 10, 25),
  (12, 'In a shallow dish or bowl, mix together the flour, salt, pepper and oregano. Coat chicken pieces in flour mixture. In a large skillet, melt butter in oil over medium heat. Place chicken in the pan, and lightly brown. Turn over chicken pieces, and add mushrooms. Pour in wine and sherry. Cover skillet; simmer chicken 10 minutes, turning once, until no longer pink and juices run clear.', 10, 20),
  (7, 'Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x13 inch baking dish. In a bowl, blend the olive oil and garlic. In a separate bowl, mix the bread crumbs, Parmesan cheese, basil, and pepper. Dip each chicken breast in the oil mixture, then in the bread crumb mixture. Arrange the coated chicken breasts in the prepared baking dish, and top with any remaining bread crumb mixture. Bake 30 minutes in the preheated oven, or until chicken is no longer pink and juices run clear.', 15, 30),
  (22, 'Mix olive oil, paprika, oregano, salt, and pepper for marinade in a glass bowl. Begin paella: Add chicken and stir to coat. Cover and refrigerate until needed. Heat 2 tablespoons olive oil in a large skillet or paella pan over medium heat. Stir in garlic and pepper flakes, then stir in rice. Cook and stir until rice is coated with oil, about 3 minutes. Add saffron threads, bay leaf, parsley, chicken stock, and lemon zest. Stir until well combined and bring to a boil. Reduce heat to medium-low, cover, and simmer for 20 minutes. While the rice is cooking, heat olive oil in a separate skillet over medium heat. Stir in marinated chicken and cook for 3 minutes. Add onion and cook until translucent, about 5 minutes. Add bell pepper and sausage; cook and stir, breaking sausage up with a spatula, for 5 minutes. Add shrimp; cook and stir until shrimp are bright pink on the outside and the meat is opaque, about 2 minutes. Spread rice mixture onto a serving tray. Top with meat and seafood mixture.', 30, 30),
  (37, 'Bring a large pot of lightly salted water to a boil. Add pasta and cook until al dente, 8 to 10 minutes; drain. Heat oil in a large skillet over medium heat. Sauté garlic until tender, then stir in chicken and season with red pepper flakes. Cook until chicken is golden and cooked through. Combine pasta, chicken, pesto, and sun-dried tomatoes in a large bowl; toss to coat evenly.', 10, 20),
  (44, 'Preheat the oven to 375 degrees F (190 degrees C). Melt 2 tablespoons butter in a skillet over medium heat. Stir in onion and garlic, and cook slowly until the onion caramelizes to a dark brown, about 15 minutes. Meanwhile, combine cream, tomato sauce, remaining butter, salt, cayenne pepper, and garam masala in a saucepan over medium-high heat; bring to a simmer. Reduce heat to medium-low, cover, and simmer, stirring occasionally, for 30 minutes. Stir in caramelized onions. While the sauce is simmering, toss chicken with vegetable oil until coated. Season with tandoori masala and spread out onto a baking sheet. Bake chicken in the preheated oven until no longer pink in the center, about 12 minutes. Add cooked chicken to the sauce and simmer for 5 minutes before serving.', 15, 45),
  (50, 'Combine water and cornstarch in cup. Set aside. Combine 1 tablespoon wine, 1 tablespoon soy sauce, 1 tablespoon sesame oil, and 1 tablespoon cornstarch/water mixture in large glass bowl. Add chicken pieces and toss to coat. Cover dish and refrigerate for about 30 minutes. Combine remaining 1 tablespoon wine, 1 tablespoon soy sauce, 1 tablespoon sesame oil, and remaining cornstarch/water mixture in a medium bowl. Whisk in chile paste, brown sugar, and vinegar. Add water chestnuts, peanuts, green onions, and garlic and toss to coat. Transfer water chestnut mixture to a medium skillet. Heat slowly over medium heat until aromatic. Meanwhile, remove chicken from marinade. Add to a large skillet and cook over medium-high heat, stirring, until chicken is cooked through and juices run clear. Combine water chestnut mixture and sautéed chicken together in one skillet. Adjust heat and simmer together until sauce thickens.', 30, 30),
  (4,  'Prepare oatmeal by boiling water, add oats and cook for 5 minutes. Slice banana, drizzle honey on top. Serve warm.', 5, 5),
  (6,  'Blend banana, milk, and peanut butter. Pour into glass. Add ice if desired.', 5, NULL),
  (9,  'Whisk eggs and fry in non-stick pan. Add sliced vegetables. Fold and serve.', 10, 8),
  (10, 'Layer yogurt, granola, and fresh berries in a glass. Drizzle honey on top.', 5, NULL),
  (11, 'Mix chicken pieces with cajun spices. Cook in a large pot with sausage, onion, and rice. Simmer until rice is done.', 20, 45),
  (14, 'Season chicken with salt and lemon. Grill on medium heat 6-7 mins per side. Serve with salad.', 10, 14),
  (16, 'Preheat oven 180C. Place chicken in dish, top with honey mustard, bake 40 mins. Serve with steamed broccoli.', 10, 40),
  (17, 'Season chicken with blackening spice blend. Cook in cast iron skillet 5 mins each side. Serve with sweet potato.', 8, 10),
  (21, 'Combine chicken with salsa in baking dish, bake at 190C for 30 mins. Shred chicken and serve on cauliflower rice.', 5, 30),
  (23, 'Coat chicken in seasoned panko. Bake at 200C for 5-7 mins or shallow fry 3 mins per side. Serve with green beans.', 15, 7),
  (25, 'Marinate chicken in Asian sauce for 30 mins. Grill on high heat 6 mins per side. Serve with bok choy.', 30, 12),
  (28, 'Combine oats and milk overnight in fridge. Top with berries and honey in the morning.', 5, NULL),
  (29, 'Grill marinated chicken on medium-high heat 5-6 mins per side. Toss with salad.', 10, 12),
  (30, 'Coat chicken in parmesan mixture. Bake at 200C for 20 mins. Serve with asparagus.', 10, 20),
  (33, 'Make thin omelette with eggs and spinach, fold. Serve immediately.', 5, 8),
  (35, 'Layer chicken and fajita veggies in bowl with rice and salsa.', 10, 15),
  (38, 'Layer Greek yogurt, granola, and seasonal fruits. Serve immediately.', 5, NULL),
  (39, 'Blend spinach, banana, and milk until smooth. Serve chilled.', 5, NULL),
  (41, 'Cook small enchiladas with seasoned chicken and sauce in oven at 180C for 35 mins.', 25, 35),
  (42, 'Season and bake chicken strips at 200C for 20 mins until blackened crust forms.', 10, 20),
  (43, 'Toast rye bread, poach eggs 3-4 mins. Place on toast. Season and serve.', 5, 4),
  (45, 'Make rich lentil and chicken soup with spices. Simmer 1 hour until thick.', 20, 60),
  (46, 'Marinate chicken in ginger-soy sauce. Grill 6 mins each side. Serve with bok choy.', 15, 12),
  (48, 'Marinate chicken in soy and ginger sauce. Grill until cooked through.', 10, 10);

  INSERT INTO Ingredient (Ingredient_Name,Unit,Calories_Per_Unit) VALUES
  ('Chicken Breast','grams',1.65),
  ('Brown Rice','grams',1.3),
  ('White Rice','grams',1.3),
  ('Eggs','piece',78.0),
  ('Whole Milk','ml',0.61),
  ('Skimmed Milk','ml',0.35),
  ('Olive Oil','ml',8.84),
  ('Cooking Oil','ml',8.84),
  ('Butter','grams',7.17),
  ('Onion','grams',0.4),
  ('Garlic','grams',1.49),
  ('Ginger Root','grams',0.8),
  ('Tomatoes','grams',0.18),
  ('Crushed Tomatoes','grams',0.24),
  ('Greek Yogurt','grams',0.97),
  ('Plain Yogurt','grams',0.61),
  ('Curry Powder','grams',3.25),
  ('Cumin','grams',3.75),
  ('Turmeric','grams',3.54),
  ('Coriander','grams',2.98),
  ('Cayenne Pepper','grams',3.18),
  ('Garam Masala','grams',3.51),
  ('Salt','grams',0.0),
  ('Black Pepper','grams',2.55),
  ('Lemon Juice','ml',0.22),
  ('Soy Sauce','ml',0.53),
  ('Sesame Oil','ml',8.84),
  ('Broccoli','grams',0.34),
  ('Carrots','grams',0.41),
  ('Bell Pepper','grams',0.31),
  ('Spinach','grams',0.23),
  ('Oats','grams',3.89),
  ('Banana','piece',89.0),
  ('Honey','grams',3.04),
  ('Peanut Butter','grams',5.88),
  ('Almond Butter','grams',6.14),
  ('Whole Wheat Bread','piece',69.0),
  ('Avocado','grams',1.6),
  ('Protein Powder','grams',4.1),
  ('Chicken Broth','ml',0.08),
  ('All Purpose Flour','grams',3.64),
  ('Panko Bread Crumbs','grams',3.95),
  ('Parmesan Cheese','grams',4.31),
  ('Cheddar Cheese','grams',4.03),
  ('Mozzarella','grams',2.8),
  ('Sweet Potato','grams',0.86),
  ('Asparagus','grams',0.2),
  ('Green Beans','grams',0.31),
  ('Cauliflower','grams',0.25),
  ('Peanuts','grams',5.67);

INSERT INTO Meal_Ingredient (RecipeID,IngredientID,Quantity) VALUES
  (1,1,900.0),
  (1,8,120.0),
  (1,10,200.0),
  (1,11,15.0),
  (1,12,8.0),
  (1,17,8.0),
  (1,18,5.0),
  (1,19,5.0),
  (1,20,5.0),
  (1,21,5.0),
  (1,14,425.0),
  (1,16,240.0),
  (1,22,5.0),
  (2,1,700.0),
  (2,3,400.0),
  (2,26,120.0),
  (2,27,30.0),
  (2,28,300.0),
  (2,10,150.0),
  (2,29,200.0),
  (2,30,150.0),
  (3,1,600.0),
  (3,41,30.0),
  (3,4,2.0),
  (3,42,100.0),
  (3,8,200.0),
  (4,1,700.0),
  (4,7,30.0),
  (4,23,5.0),
  (5,1,600.0),
  (5,41,25.0),
  (5,7,30.0),
  (5,9,30.0),
  (5,11,10.0),
  (6,1,700.0),
  (6,43,80.0),
  (6,7,30.0),
  (6,11,15.0),
  (6,9,20.0),
  (7,1,450.0),
  (7,3,250.0),
  (7,10,150.0),
  (7,30,100.0),
  (7,13,200.0),
  (7,40,600.0),
  (8,1,400.0),
  (8,7,30.0),
  (8,11,10.0),
  (8,43,50.0),
  (9,1,700.0),
  (9,9,60.0),
  (9,13,400.0),
  (9,16,200.0),
  (9,22,8.0),
  (9,12,10.0),
  (10,1,600.0),
  (10,26,60.0),
  (10,50,100.0),
  (10,8,30.0),
  (10,11,10.0),
  (10,12,8.0),
  (10,21,3.0),
  (11,32,80.0),
  (11,33,1.0),
  (11,34,20.0),
  (11,6,200.0),
  (12,33,1.0),
  (12,35,32.0),
  (12,6,250.0),
  (13,4,3.0),
  (13,31,50.0),
  (13,7,10.0),
  (13,30,60.0),
  (14,15,200.0),
  (14,32,40.0),
  (14,34,15.0),
  (15,1,400.0),
  (15,3,200.0),
  (15,10,120.0),
  (15,30,80.0),
  (15,13,160.0),
  (16,1,200.0),
  (16,25,30.0),
  (16,7,15.0),
  (16,23,3.0),
  (16,24,2.0),
  (17,1,600.0),
  (17,34,45.0),
  (17,7,20.0),
  (18,1,400.0),
  (18,21,5.0),
  (18,18,5.0),
  (18,24,3.0),
  (18,8,15.0),
  (19,1,600.0),
  (19,13,300.0),
  (20,1,600.0),
  (20,42,80.0),
  (20,7,20.0),
  (20,4,1.0),
  (21,1,500.0),
  (21,26,40.0),
  (21,27,10.0),
  (21,12,8.0),
  (21,11,10.0),
  (22,32,80.0),
  (22,6,200.0),
  (22,34,15.0),
  (22,33,0.5),
  (23,1,500.0),
  (23,7,20.0),
  (23,25,30.0),
  (23,11,10.0),
  (24,1,600.0),
  (24,43,60.0),
  (24,4,1.0),
  (24,9,20.0),
  (25,4,3.0),
  (25,31,80.0),
  (25,9,10.0),
  (26,1,300.0),
  (26,30,120.0),
  (26,10,100.0),
  (26,7,15.0),
  (27,15,200.0),
  (27,32,35.0),
  (27,34,10.0),
  (28,31,60.0),
  (28,33,1.0),
  (28,6,250.0),
  (28,34,10.0),
  (29,1,400.0),
  (29,13,200.0),
  (29,10,100.0),
  (29,8,20.0),
  (29,41,20.0),
  (30,1,400.0),
  (30,21,5.0),
  (30,18,5.0),
  (30,8,15.0),
  (31,4,2.0),
  (31,37,2.0),
  (31,9,5.0),
  (32,1,300.0),
  (32,29,100.0),
  (32,10,150.0),
  (32,17,8.0),
  (32,40,800.0),
  (33,1,500.0),
  (33,26,40.0),
  (33,27,10.0),
  (33,12,8.0),
  (34,1,500.0),
  (34,26,40.0),
  (34,12,8.0),
  (34,11,10.0);

  INSERT INTO Progress_Log (UserID,WorkoutPlanID,Log_Date,Weight,Chest,Waist,Hips,Arms,Thighs,Energy_Level,Mood,Workouts_Completed,Notes) VALUES
  (1,2,'2025-01-06',80.0,98.0,84.0,NULL,38.0,58.0,4,'Good',1,'First day of new plan, feeling motivated'),
  (1,2,'2025-01-13',79.5,97.8,83.5,NULL,38.2,57.8,4,'Good',5,'Great week, energy levels high'),
  (1,2,'2025-01-20',79.0,97.5,83.0,NULL,38.5,57.5,5,'Great',6,'Strength improving noticeably'),
  (2,4,'2025-01-06',62.0,86.0,72.0,90.0,28.0,52.0,3,'Neutral',1,'Starting weight loss journey'),
  (2,4,'2025-01-13',61.5,85.8,71.5,89.8,28.0,51.8,3,'Good',3,'Lost 0.5kg, on track'),
  (2,4,'2025-01-20',61.0,85.5,71.0,89.5,28.1,51.5,4,'Good',4,'Cardio getting easier'),
  (3,5,'2025-01-13',90.0,104.0,96.0,102.0,40.0,64.0,2,'Neutral',1,'Very hard first session'),
  (3,5,'2025-01-20',89.5,103.8,95.5,101.8,40.0,63.8,3,'Good',3,'Getting used to routine'),
  (4,6,'2025-01-06',58.0,84.0,68.0,92.0,27.5,50.0,5,'Great',1,'Feeling strong and energized'),
  (5,7,'2025-01-06',85.0,100.0,86.0,NULL,40.0,58.0,5,'Great',1,'Max weight PR today'),
  (5,7,'2025-01-13',85.2,100.5,85.8,NULL,40.5,57.8,5,'Great',6,'Excellent training week'),
  (6,8,'2025-01-13',55.0,82.0,70.0,88.0,26.0,50.0,3,'Good',1,'Light workout, felt refreshing'),
  (7,9,'2025-01-06',78.0,96.0,82.0,NULL,36.0,56.0,3,'Neutral',1,'New to gym, challenging but good'),
  (8,10,'2025-01-06',68.0,86.0,74.0,92.0,30.0,53.0,4,'Good',1,'Excellent first endurance session'),
  (9,11,'2025-01-13',95.0,108.0,100.0,106.0,43.0,67.0,3,'Good',2,'Heavy but improving'),
  (10,12,'2025-01-06',60.0,84.0,70.0,90.0,27.5,50.5,4,'Good',1,'Flexibility noticeably improving'),
  (11,13,'2025-01-06',NULL,NULL,NULL,NULL,NULL,NULL,5,'Great',2,'Smashed chest and back workout'),
  (12,14,'2025-01-13',52.0,80.0,68.0,86.0,25.0,48.0,3,'Neutral',1,'Slight fatigue but completed all sets'),
  (13,15,'2025-01-06',88.0,102.0,95.0,100.0,41.0,65.0,2,'Poor',1,'Very sedentary before, hard start'),
  (14,16,'2025-01-13',65.0,86.0,72.0,90.0,29.0,52.0,4,'Good',2,'Enjoying the workouts'),
  (15,17,'2025-01-06',NULL,NULL,NULL,NULL,NULL,NULL,5,'Great',3,'High performance triathlon training day'),
  (16,18,'2025-01-13',63.0,85.0,71.0,89.0,28.5,51.0,4,'Good',2,'Toning plan working well'),
  (17,19,'2025-01-06',92.0,105.0,98.0,103.0,42.0,66.0,3,'Good',1,'First gym session in years'),
  (18,20,'2025-01-13',54.0,81.0,69.0,87.0,25.5,49.0,4,'Good',2,'Vegan energy is great'),
  (19,21,'2025-01-06',87.0,101.0,87.0,NULL,41.0,58.0,5,'Great',3,'Excellent bulking session'),
  (20,22,'2025-01-13',70.0,87.0,74.5,91.0,31.0,53.0,3,'Tired',1,'Tired but completed workout'),
  (21,23,'2025-01-06',88.0,103.0,97.0,103.0,42.0,66.0,3,'Good',2,'Steady progress'),
  (22,24,'2025-01-13',57.0,83.0,71.0,89.0,26.0,50.0,3,'Good',2,'Low impact suits me'),
  (23,25,'2025-01-06',79.0,97.0,83.0,NULL,38.0,57.0,4,'Good',2,'Upper lower split feeling good'),
  (24,26,'2025-01-13',61.0,84.0,71.0,89.0,27.0,51.0,4,'Good',2,'Endurance building'),
  (25,27,'2025-01-06',95.0,107.0,101.0,106.0,44.0,68.0,2,'Neutral',1,'Difficult first step but done'),
  (26,28,'2025-01-13',59.0,83.0,70.0,88.0,26.5,50.0,3,'Good',1,'Flexibility exercises are wonderful'),
  (27,29,'2025-01-06',100.0,111.0,104.0,108.0,45.0,70.0,3,'Neutral',2,'Gym routine established'),
  (28,30,'2025-01-13',64.0,85.0,72.0,90.0,28.0,52.0,5,'Great',3,'Elite training going well'),
  (29,31,'2025-01-06',81.0,97.0,84.0,NULL,37.5,57.0,3,'Good',1,'Weekend workout completed'),
  (30,32,'2025-01-13',56.0,82.0,70.0,88.0,25.5,49.5,4,'Good',2,'Yoga and pilates rejuvenating');

INSERT INTO ProgressLog_Exercise (LogID,ExerciseID,Sets_Completed,Reps_Completed,Notes) VALUES
  (1,19,4,10,'Bench press felt great'),
  (1,4,3,12,'Good form'),
  (1,7,3,15,'Controlled reps'),
  (2,19,4,10,'Improving'),
  (2,17,3,12,'Lat pulldown PR'),
  (2,7,3,15,'Solid'),
  (3,19,4,11,'Getting stronger'),
  (3,4,3,12,'Added 2.5kg'),
  (3,7,3,15,'Core engaged'),
  (4,26,3,20,'Cardio warm-up'),
  (4,2,3,15,'Great form'),
  (4,6,2,10,'Needed to rest'),
  (5,26,3,20,'Better pace'),
  (5,31,3,10,'Jogging improving'),
  (5,29,1,5,'First run'),
  (6,26,3,20,'Cardio improving'),
  (6,2,3,16,'Core strength up'),
  (6,6,2,12,'Slightly better'),
  (7,7,3,12,'Hard but done'),
  (7,5,3,10,'Push-ups improving'),
  (7,2,3,15,'Obliques burning'),
  (8,7,3,12,'Steady progress'),
  (8,5,3,11,'Added one rep'),
  (9,27,3,15,'Good stretch'),
  (9,33,3,20,'Feeling flexible'),
  (10,18,4,10,'Squat PR'),
  (10,15,3,12,'Quad pump'),
  (10,32,3,15,'Hip drive good'),
  (10,18,5,5,'Heavy squat'),
  (10,19,5,5,'Bench PR'),
  (10,15,4,8,'Quad burn'),
  (11,18,5,5,'PB today'),
  (11,19,5,5,'Chest development'),
  (11,15,4,8,'Strong legs'),
  (12,6,3,10,'Light warm-up'),
  (12,2,3,15,'Core stability'),
  (13,7,3,12,'Learning form'),
  (13,2,3,12,'Engaged core'),
  (14,26,3,20,'Pace improving'),
  (14,31,3,10,'Ran full session'),
  (14,29,1,10,'Good run'),
  (15,18,3,12,'Legs on fire'),
  (15,32,3,12,'Glutes activated'),
  (16,27,3,15,'Relaxing session'),
  (16,33,3,20,'Great flexibility'),
  (17,19,4,10,'Top set'),
  (17,4,4,8,'Upper body power'),
  (17,17,4,10,'Back strength'),
  (18,2,3,15,'Core work'),
  (18,6,3,12,'Stability good'),
  (19,18,5,5,'Heavy deadlift'),
  (19,15,5,5,'Squat max'),
  (19,32,4,8,'Hip thrust'),
  (20,26,3,20,'Cardio done'),
  (20,2,3,12,'Core burned'),
  (21,18,5,5,'Back squat'),
  (21,19,5,5,'Flat bench'),
  (21,15,4,8,'Bulgarian split'),
  (22,27,3,15,'Shoulder mobility'),
  (22,22,3,10,'Balance good'),
  (23,19,3,12,'Incline press'),
  (23,4,3,10,'Cable fly'),
  (23,17,3,10,'Rows done'),
  (24,26,3,20,'Trail running'),
  (24,31,3,10,'Tempo'),
  (25,29,1,15,'First time running'),
  (25,26,2,15,'Walking done'),
  (26,27,3,15,'Relaxing stretches'),
  (26,33,3,20,'Hip flexor stretch'),
  (27,7,3,12,'Beginner form'),
  (27,5,3,10,'Wall push-up'),
  (28,19,4,10,'Muscle gain plan'),
  (28,17,4,10,'Back thickness'),
  (28,15,4,12,'Glute work'),
  (29,7,3,12,'Weekend session'),
  (29,2,3,12,'Core activated'),
  (30,27,3,15,'Yoga flow'),
  (30,33,3,20,'Pilates core');

  INSERT INTO Recommendation (UserID,Source_WorkoutPlanID,Source_DietPlanID,Suggested_WorkoutPlanID,Suggested_DietPlanID,Recommendation_Type,Trigger_Reason,Suggested_Changes,Recommendation_Date,Status) VALUES
  (1,2,1,NULL,NULL,'Increase Intensity','User completed 3 weeks with excellent progress and high energy levels.','Increase weights by 5-10% in all compound lifts. Add one extra set per exercise.','2025-01-27','Accepted'),
  (2,4,2,NULL,NULL,'Change Exercises','User complained of knee discomfort during squats.','Replace barbell squats with leg press. Add knee strengthening exercises.','2025-01-20','Accepted'),
  (3,5,3,NULL,NULL,'Increase Intensity','Ahmed has consistently completed all workouts for 2 weeks.','Increase cardio from 3 to 4 days per week. Add interval training sessions.','2025-01-27','Pending'),
  (5,7,5,NULL,NULL,'Increase Intensity','Usman is an advanced lifter making excellent progress. Ready for more volume.','Add one extra training day. Incorporate periodization into the routine.','2025-01-20','Accepted'),
  (7,9,7,NULL,NULL,'Change Exercises','Bilal expressed boredom with current routine after 3 weeks.','Swap 2 exercises per workout for variety. Add some HIIT elements.','2025-01-27','Pending'),
  (9,11,9,NULL,NULL,'Decrease Intensity','Hamza reported joint pain in shoulders during overhead press.','Replace overhead press with lateral raises. Reduce training load by 20%.','2025-01-20','Accepted'),
  (13,15,13,NULL,NULL,'Increase Intensity','Imran has gone from sedentary to completing 3 workouts per week. Ready to progress.','Add 10 more minutes per session. Introduce resistance band exercises.','2025-01-27','Accepted'),
  (17,19,17,NULL,NULL,'Rest','Faisal reported persistent fatigue and soreness over the past week.','Take 3 days full rest. Reduce training frequency to 3 times per week until recovered.','2025-01-20','Accepted'),
  (19,21,19,NULL,NULL,'Increase Intensity','Danish is an advanced athlete with excellent recovery and consistent progress.','Add a 5th training day. Include drop sets and supersets.','2025-01-27','Pending'),
  (25,27,25,NULL,NULL,'Change Exercises','Kamran has knee problems and some exercises are aggravating the condition.','Remove jumping exercises. Replace with low-impact alternatives. Focus on swimming or cycling.','2025-01-20','Accepted'),
  (27,29,27,NULL,NULL,'Decrease Intensity','Shahid reported shortness of breath during high-intensity workouts.','Reduce cardio intensity. Consult doctor before continuing. Focus on walking for now.','2025-01-27','Pending'),
  (3,5,3,NULL,NULL,'Diet Adjustment','Ahmed is not losing weight as expected despite workout compliance. Diet review needed.','Reduce daily calories by 150. Increase protein to 145g per day. Track macros closely.','2025-01-24','Accepted'),
  (20,22,20,NULL,NULL,'Diet Adjustment','Komal is losing weight too fast (1.5kg/week). Risk of muscle loss.','Increase daily calories by 200. Add protein-rich snacks between meals.','2025-01-21','Accepted'),
  (8,10,8,NULL,NULL,'Increase Intensity','Zara is highly active and adapting well. Cardio needs more challenge.','Add one long run day. Increase tempo run speed by 0.5 km/h each week.','2025-01-28','Pending'),
  (11,13,11,NULL,NULL,'Rest','Omar reported feeling overtrained with 7 gym days per week.','Implement structured deload week. Reduce volume by 50% for one week.','2025-01-27','Accepted');

INSERT INTO Profile_Audit_Log (UserID,Timestamp) VALUES
  (1,'2025-01-15 10:00:00'),
  (2,'2025-01-16 11:00:00'),
  (3,'2025-01-17 09:00:00'),
  (5,'2025-01-18 14:00:00'),
  (7,'2025-01-19 10:00:00'),
  (9,'2025-01-20 15:00:00'),
  (13,'2025-01-21 08:00:00'),
  (17,'2025-01-22 12:00:00'),
  (20,'2025-01-23 09:00:00'),
  (25,'2025-01-24 10:00:00');

INSERT INTO Audit_Field_Change (AuditID,Field_Changed,Old_Value,New_Value) VALUES
  (1,'Weight','80.00','79.50'),
  (1,'Target_Weight','75.00','73.00'),
  (2,'Activity_Level','Sedentary','Lightly Active'),
  (2,'Workout_Frequency','2','3'),
  (3,'Weight','90.00','89.50'),
  (3,'Timeline','8','6'),
  (4,'Primary_Goal','General Health','Muscle Gain'),
  (4,'Workout_Frequency','5','6'),
  (5,'Body_Type','Average','Athletic'),
  (5,'Current_Fitness_Level','Beginner','Intermediate'),
  (6,'Weight','95.00','94.50'),
  (6,'Target_Weight','78.00','75.00'),
  (7,'Weight','88.00','87.00'),
  (7,'Activity_Level','Sedentary','Lightly Active'),
  (8,'Weight','92.00','91.00'),
  (8,'Workout_Frequency','2','3'),
  (9,'Weight','70.00','69.50'),
  (9,'Target_Weight','58.00','56.00'),
  (10,'Weight','95.00','94.00'),
  (10,'Timeline','12','10');
INSERT INTO Workout_Plan (UserID, Title, Goal, Plan_Type, Is_Active, Start_Date, End_Date)
VALUES (1, '[TEMPLATE] Weight Loss Home Plan', 'Weight Loss', 'Home', 0, CURDATE(), NULL);
SET @wp_wl_home = LAST_INSERT_ID();

-- Day 1 (Monday) — Full Body Cardio + Strength
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_wl_home, 1, 'Monday', 'Full Body Cardio + Strength', 45, 350, 0, 'Warm up 5 min before starting.');
SET @wd_wl_1 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_wl_1, 1, 3, 15, 45, 'Medium', 1, NULL),
(@wd_wl_1, 2, 3, 12, 45, 'Medium', 2, NULL),
(@wd_wl_1, 3, 3, 15, 30, 'Medium', 3, NULL);

-- Day 2 (Tuesday) — HIIT Cardio
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_wl_home, 2, 'Tuesday', 'HIIT Cardio', 30, 300, 0, 'Keep rest intervals short.');
SET @wd_wl_2 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_wl_2, 4, 4, 20, 30, 'High', 1, NULL),
(@wd_wl_2, 5, 4, 20, 30, 'High', 2, NULL);

-- Day 3 (Wednesday) — Rest Day
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_wl_home, 3, 'Wednesday', 'Rest', NULL, NULL, 1, 'Active recovery — light stretching or walking.');

-- Day 4 (Thursday) — Lower Body
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_wl_home, 4, 'Thursday', 'Lower Body', 40, 320, 0, NULL);
SET @wd_wl_4 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_wl_4, 6, 3, 15, 45, 'Medium', 1, NULL),
(@wd_wl_4, 7, 3, 12, 45, 'Medium', 2, NULL),
(@wd_wl_4, 8, 3, 15, 30, 'Medium', 3, NULL);

-- Day 5 (Friday) — Core + Cardio
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_wl_home, 5, 'Friday', 'Core + Cardio', 35, 280, 0, NULL);
SET @wd_wl_5 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_wl_5, 9, 3, 20, 30, 'Medium', 1, NULL),
(@wd_wl_5, 10, 3, 20, 30, 'Medium', 2, NULL);

-- Day 6 (Saturday) — Full Body Circuit
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_wl_home, 6, 'Saturday', 'Full Body Circuit', 50, 400, 0, 'Repeat circuit twice.');
SET @wd_wl_6 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_wl_6, 1, 2, 15, 30, 'High', 1, NULL),
(@wd_wl_6, 3, 2, 15, 30, 'High', 2, NULL),
(@wd_wl_6, 5, 2, 20, 30, 'High', 3, NULL),
(@wd_wl_6, 7, 2, 15, 30, 'High', 4, NULL);

-- Day 7 (Sunday) — Rest Day
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_wl_home, 7, 'Sunday', 'Rest', NULL, NULL, 1, 'Full rest before next week.');


-- ------------------------------------------------------------
-- TEMPLATE WORKOUT PLAN 2: [TEMPLATE] Muscle Gain Gym Plan
-- Goal: Muscle Gain | Plan_Type: Gym | 7 days
-- ------------------------------------------------------------
INSERT INTO Workout_Plan (UserID, Title, Goal, Plan_Type, Is_Active, Start_Date, End_Date)
VALUES (1, '[TEMPLATE] Muscle Gain Gym Plan', 'Muscle Gain', 'Gym', 0, CURDATE(), NULL);
SET @wp_mg_gym = LAST_INSERT_ID();

-- Day 1 (Monday) — Chest & Triceps
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_mg_gym, 1, 'Monday', 'Chest & Triceps', 60, 400, 0, NULL);
SET @wd_mg_1 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_mg_1, 11, 4, 10, 90, 'High', 1, NULL),
(@wd_mg_1, 12, 4, 10, 90, 'High', 2, NULL),
(@wd_mg_1, 13, 3, 12, 60, 'Medium', 3, NULL);

-- Day 2 (Tuesday) — Back & Biceps
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_mg_gym, 2, 'Tuesday', 'Back & Biceps', 60, 400, 0, NULL);
SET @wd_mg_2 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_mg_2, 14, 4, 10, 90, 'High', 1, NULL),
(@wd_mg_2, 15, 4, 10, 90, 'High', 2, NULL),
(@wd_mg_2, 16, 3, 12, 60, 'Medium', 3, NULL);

-- Day 3 (Wednesday) — Rest Day
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_mg_gym, 3, 'Wednesday', 'Rest', NULL, NULL, 1, 'Recovery day — focus on protein intake.');

-- Day 4 (Thursday) — Legs
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_mg_gym, 4, 'Thursday', 'Legs', 65, 450, 0, NULL);
SET @wd_mg_4 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_mg_4, 17, 4, 10, 90, 'High', 1, NULL),
(@wd_mg_4, 18, 4, 12, 90, 'High', 2, NULL),
(@wd_mg_4, 19, 3, 15, 60, 'Medium', 3, NULL);

-- Day 5 (Friday) — Shoulders & Arms
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_mg_gym, 5, 'Friday', 'Shoulders & Arms', 55, 380, 0, NULL);
SET @wd_mg_5 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_mg_5, 12, 4, 10, 90, 'High', 1, NULL),
(@wd_mg_5, 15, 3, 12, 60, 'Medium', 2, NULL),
(@wd_mg_5, 20, 3, 12, 60, 'Medium', 3, NULL);

-- Day 6 (Saturday) — Full Body Strength
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_mg_gym, 6, 'Saturday', 'Full Body Strength', 60, 420, 0, NULL);
SET @wd_mg_6 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_mg_6, 11, 3, 10, 90, 'High', 1, NULL),
(@wd_mg_6, 14, 3, 10, 90, 'High', 2, NULL),
(@wd_mg_6, 17, 3, 10, 90, 'High', 3, NULL);

-- Day 7 (Sunday) — Rest Day
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_mg_gym, 7, 'Sunday', 'Rest', NULL, NULL, 1, 'Full rest before next week.');


-- ------------------------------------------------------------
-- TEMPLATE WORKOUT PLAN 3: [TEMPLATE] General Health Home Plan
-- Goal: General Health | Plan_Type: Home | 7 days
-- ------------------------------------------------------------
INSERT INTO Workout_Plan (UserID, Title, Goal, Plan_Type, Is_Active, Start_Date, End_Date)
VALUES (1, '[TEMPLATE] General Health Home Plan', 'General Health', 'Home', 0, CURDATE(), NULL);
SET @wp_gh_home = LAST_INSERT_ID();

-- Day 1 (Monday) — Light Cardio + Mobility
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_gh_home, 1, 'Monday', 'Light Cardio + Mobility', 30, 200, 0, NULL);
SET @wd_gh_1 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_gh_1, 2, 3, 15, 45, 'Low', 1, NULL),
(@wd_gh_1, 9, 3, 15, 45, 'Low', 2, NULL);

-- Day 2 (Tuesday) — Bodyweight Strength
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_gh_home, 2, 'Tuesday', 'Bodyweight Strength', 35, 250, 0, NULL);
SET @wd_gh_2 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_gh_2, 1, 3, 12, 45, 'Medium', 1, NULL),
(@wd_gh_2, 3, 3, 12, 45, 'Medium', 2, NULL),
(@wd_gh_2, 7, 3, 12, 45, 'Medium', 3, NULL);

-- Day 3 (Wednesday) — Yoga / Flexibility
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_gh_home, 3, 'Wednesday', 'Yoga / Flexibility', 30, 120, 0, NULL);
SET @wd_gh_3 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_gh_3, 10, 3, 10, 30, 'Low', 1, NULL);

-- Day 4 (Thursday) — Rest Day
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_gh_home, 4, 'Thursday', 'Rest', NULL, NULL, 1, 'Light walking optional.');

-- Day 5 (Friday) — Cardio
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_gh_home, 5, 'Friday', 'Cardio', 30, 220, 0, NULL);
SET @wd_gh_5 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_gh_5, 4, 3, 15, 45, 'Medium', 1, NULL),
(@wd_gh_5, 5, 3, 15, 45, 'Medium', 2, NULL);

-- Day 6 (Saturday) — Full Body Light
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_gh_home, 6, 'Saturday', 'Full Body Light', 35, 240, 0, NULL);
SET @wd_gh_6 = LAST_INSERT_ID();
INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps, Rest_Time_Seconds, Intensity, Order_In_Day, Notes) VALUES
(@wd_gh_6, 1, 2, 15, 45, 'Low', 1, NULL),
(@wd_gh_6, 6, 2, 15, 45, 'Low', 2, NULL),
(@wd_gh_6, 9, 2, 15, 45, 'Low', 3, NULL);

-- Day 7 (Sunday) — Rest Day
INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area, Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
VALUES (@wp_gh_home, 7, 'Sunday', 'Rest', NULL, NULL, 1, 'Full rest before next week.');


-- ------------------------------------------------------------
-- TEMPLATE DIET PLAN 1: [TEMPLATE] Weight Loss Pakistani Plan
-- Plan_Type: Weight Loss | Cultural_Preference: Pakistani/South Asian
-- ------------------------------------------------------------
INSERT INTO Diet_Plan (UserID, Title, Plan_Type, Daily_Calorie_Target, Protein_Target, Carb_Target, Fat_Target,
                       Duration_Weeks, Cultural_Preference, Budget_Level, Start_Date, End_Date, Is_Active)
VALUES (1, '[TEMPLATE] Weight Loss Pakistani Plan', 'Weight Loss', 1500, 110.00, 150.00, 50.00,
        4, 'Pakistani/South Asian', 'Medium', CURDATE(), NULL, 0);
SET @dp_wl_pk = LAST_INSERT_ID();

-- Day 1 (Monday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_wl_pk, 1, 'Monday', 1500, NULL);
SET @dd_wl_pk_1 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_wl_pk_1, 'Breakfast', 'Vegetable Daliya with Boiled Egg', 350, 18.00, 45.00, 8.00, 1, NULL),
(@dd_wl_pk_1, 'Lunch', 'Grilled Chicken Tikka with Salad', 500, 40.00, 30.00, 18.00, 2, NULL),
(@dd_wl_pk_1, 'Dinner', 'Lentil Daal with Roti (1 piece)', 500, 22.00, 60.00, 12.00, 3, NULL),
(@dd_wl_pk_1, 'Snack', 'Roasted Chana (1 small bowl)', 150, 8.00, 18.00, 4.00, 4, NULL);

-- Day 2 (Tuesday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_wl_pk, 2, 'Tuesday', 1500, NULL);
SET @dd_wl_pk_2 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_wl_pk_2, 'Breakfast', 'Greek Yogurt with Honey and Almonds', 350, 20.00, 35.00, 12.00, 1, NULL),
(@dd_wl_pk_2, 'Lunch', 'Grilled Fish with Brown Rice and Vegetables', 500, 38.00, 45.00, 14.00, 2, NULL),
(@dd_wl_pk_2, 'Dinner', 'Chicken Karahi (Light Oil) with Roti', 500, 35.00, 40.00, 18.00, 3, NULL),
(@dd_wl_pk_2, 'Snack', 'Fresh Fruit Bowl', 150, 2.00, 35.00, 1.00, 4, NULL);

-- Day 3 (Wednesday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_wl_pk, 3, 'Wednesday', 1500, NULL);
SET @dd_wl_pk_3 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_wl_pk_3, 'Breakfast', 'Vegetable Omelette with Whole Wheat Toast', 350, 20.00, 30.00, 14.00, 1, NULL),
(@dd_wl_pk_3, 'Lunch', 'Chickpea (Chana) Salad with Yogurt Dressing', 500, 25.00, 55.00, 14.00, 2, NULL),
(@dd_wl_pk_3, 'Dinner', 'Grilled Chicken Seekh Kabab with Salad', 500, 38.00, 25.00, 20.00, 3, NULL),
(@dd_wl_pk_3, 'Snack', 'Boiled Corn (Makai)', 150, 5.00, 28.00, 2.00, 4, NULL);

-- Day 4 (Thursday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_wl_pk, 4, 'Thursday', 1500, NULL);
SET @dd_wl_pk_4 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_wl_pk_4, 'Breakfast', 'Oats with Milk and Banana', 350, 14.00, 55.00, 8.00, 1, NULL),
(@dd_wl_pk_4, 'Lunch', 'Mixed Vegetable Curry with Brown Rice', 500, 18.00, 70.00, 12.00, 2, NULL),
(@dd_wl_pk_4, 'Dinner', 'Grilled Chicken Breast with Steamed Vegetables', 500, 42.00, 25.00, 14.00, 3, NULL),
(@dd_wl_pk_4, 'Snack', 'Cucumber and Carrot Sticks with Hummus', 150, 6.00, 16.00, 6.00, 4, NULL);

-- Day 5 (Friday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_wl_pk, 5, 'Friday', 1500, NULL);
SET @dd_wl_pk_5 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_wl_pk_5, 'Breakfast', 'Paratha (1, less oil) with Egg Whites', 350, 18.00, 35.00, 14.00, 1, NULL),
(@dd_wl_pk_5, 'Lunch', 'Lentil Soup with Whole Wheat Roti', 500, 24.00, 65.00, 10.00, 2, NULL),
(@dd_wl_pk_5, 'Dinner', 'Grilled Fish Tikka with Salad', 500, 40.00, 25.00, 16.00, 3, NULL),
(@dd_wl_pk_5, 'Snack', 'Plain Yogurt with Chia Seeds', 150, 9.00, 12.00, 5.00, 4, NULL);

-- Day 6 (Saturday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_wl_pk, 6, 'Saturday', 1500, NULL);
SET @dd_wl_pk_6 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_wl_pk_6, 'Breakfast', 'Vegetable Daliya with Boiled Egg', 350, 18.00, 45.00, 8.00, 1, NULL),
(@dd_wl_pk_6, 'Lunch', 'Chicken Pulao (Small Portion) with Salad', 500, 30.00, 55.00, 14.00, 2, NULL),
(@dd_wl_pk_6, 'Dinner', 'Grilled Chicken with Sauteed Vegetables', 500, 40.00, 22.00, 16.00, 3, NULL),
(@dd_wl_pk_6, 'Snack', 'Roasted Chana (1 small bowl)', 150, 8.00, 18.00, 4.00, 4, NULL);

-- Day 7 (Sunday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_wl_pk, 7, 'Sunday', 1500, NULL);
SET @dd_wl_pk_7 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_wl_pk_7, 'Breakfast', 'Greek Yogurt with Honey and Almonds', 350, 20.00, 35.00, 12.00, 1, NULL),
(@dd_wl_pk_7, 'Lunch', 'Grilled Chicken Tikka with Salad', 500, 40.00, 30.00, 18.00, 2, NULL),
(@dd_wl_pk_7, 'Dinner', 'Lentil Daal with Roti (1 piece)', 500, 22.00, 60.00, 12.00, 3, NULL),
(@dd_wl_pk_7, 'Snack', 'Fresh Fruit Bowl', 150, 2.00, 35.00, 1.00, 4, NULL);


-- ------------------------------------------------------------
-- TEMPLATE DIET PLAN 2: [TEMPLATE] Muscle Gain Western Plan
-- Plan_Type: Muscle Gain | Cultural_Preference: Western
-- ------------------------------------------------------------
INSERT INTO Diet_Plan (UserID, Title, Plan_Type, Daily_Calorie_Target, Protein_Target, Carb_Target, Fat_Target,
                       Duration_Weeks, Cultural_Preference, Budget_Level, Start_Date, End_Date, Is_Active)
VALUES (1, '[TEMPLATE] Muscle Gain Western Plan', 'Muscle Gain', 2800, 180.00, 300.00, 80.00,
        4, 'Western', 'Medium', CURDATE(), NULL, 0);
SET @dp_mg_west = LAST_INSERT_ID();

-- Day 1 (Monday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_mg_west, 1, 'Monday', 2800, NULL);
SET @dd_mg_west_1 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_mg_west_1, 'Breakfast', 'Oatmeal with Protein Powder and Banana', 600, 40.00, 75.00, 12.00, 1, NULL),
(@dd_mg_west_1, 'Lunch', 'Grilled Chicken Breast with Rice and Broccoli', 800, 55.00, 85.00, 18.00, 2, NULL),
(@dd_mg_west_1, 'Dinner', 'Steak with Sweet Potato and Green Beans', 900, 58.00, 80.00, 28.00, 3, NULL),
(@dd_mg_west_1, 'Snack', 'Greek Yogurt with Granola and Almonds', 500, 27.00, 60.00, 22.00, 4, NULL);

-- Day 2 (Tuesday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_mg_west, 2, 'Tuesday', 2800, NULL);
SET @dd_mg_west_2 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_mg_west_2, 'Breakfast', 'Scrambled Eggs with Whole Wheat Toast and Avocado', 600, 35.00, 60.00, 22.00, 1, NULL),
(@dd_mg_west_2, 'Lunch', 'Turkey and Quinoa Bowl with Mixed Vegetables', 800, 52.00, 90.00, 20.00, 2, NULL),
(@dd_mg_west_2, 'Dinner', 'Grilled Salmon with Brown Rice and Asparagus', 900, 56.00, 85.00, 30.00, 3, NULL),
(@dd_mg_west_2, 'Snack', 'Protein Shake with Peanut Butter and Oats', 500, 35.00, 50.00, 18.00, 4, NULL);

-- Day 3 (Wednesday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_mg_west, 3, 'Wednesday', 2800, NULL);
SET @dd_mg_west_3 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_mg_west_3, 'Breakfast', 'Greek Yogurt Parfait with Berries and Honey', 600, 32.00, 80.00, 14.00, 1, NULL),
(@dd_mg_west_3, 'Lunch', 'Beef and Vegetable Stir Fry with Rice', 800, 50.00, 90.00, 22.00, 2, NULL),
(@dd_mg_west_3, 'Dinner', 'Grilled Chicken Thighs with Mashed Potatoes', 900, 58.00, 80.00, 28.00, 3, NULL),
(@dd_mg_west_3, 'Snack', 'Cottage Cheese with Pineapple and Walnuts', 500, 30.00, 50.00, 18.00, 4, NULL);

-- Day 4 (Thursday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_mg_west, 4, 'Thursday', 2800, NULL);
SET @dd_mg_west_4 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_mg_west_4, 'Breakfast', 'Whole Egg Omelette with Cheese and Spinach, Toast', 600, 38.00, 55.00, 24.00, 1, NULL),
(@dd_mg_west_4, 'Lunch', 'Grilled Chicken Caesar Wrap with Sweet Potato Fries', 800, 50.00, 85.00, 24.00, 2, NULL),
(@dd_mg_west_4, 'Dinner', 'Baked Salmon with Quinoa and Roasted Vegetables', 900, 56.00, 80.00, 30.00, 3, NULL),
(@dd_mg_west_4, 'Snack', 'Protein Bar and a Handful of Almonds', 500, 28.00, 48.00, 22.00, 4, NULL);

-- Day 5 (Friday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_mg_west, 5, 'Friday', 2800, NULL);
SET @dd_mg_west_5 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_mg_west_5, 'Breakfast', 'Pancakes with Greek Yogurt and Mixed Berries', 600, 30.00, 85.00, 14.00, 1, NULL),
(@dd_mg_west_5, 'Lunch', 'Lean Beef Burger with Whole Wheat Bun and Salad', 800, 50.00, 80.00, 26.00, 2, NULL),
(@dd_mg_west_5, 'Dinner', 'Grilled Chicken Breast with Rice and Steamed Broccoli', 900, 60.00, 85.00, 26.00, 3, NULL),
(@dd_mg_west_5, 'Snack', 'Protein Shake with Banana', 500, 35.00, 55.00, 12.00, 4, NULL);

-- Day 6 (Saturday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_mg_west, 6, 'Saturday', 2800, NULL);
SET @dd_mg_west_6 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_mg_west_6, 'Breakfast', 'Breakfast Burrito with Eggs, Beans and Cheese', 600, 36.00, 65.00, 22.00, 1, NULL),
(@dd_mg_west_6, 'Lunch', 'Grilled Steak Salad with Sweet Potato', 800, 55.00, 75.00, 24.00, 2, NULL),
(@dd_mg_west_6, 'Dinner', 'Roast Chicken with Brown Rice and Green Beans', 900, 58.00, 85.00, 26.00, 3, NULL),
(@dd_mg_west_6, 'Snack', 'Greek Yogurt with Granola and Almonds', 500, 27.00, 60.00, 22.00, 4, NULL);

-- Day 7 (Sunday)
INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
VALUES (@dp_mg_west, 7, 'Sunday', 2800, NULL);
SET @dd_mg_west_7 = LAST_INSERT_ID();
INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories, Protein, Carbs, Fats, Order_In_Day, Notes) VALUES
(@dd_mg_west_7, 'Breakfast', 'Oatmeal with Protein Powder and Banana', 600, 40.00, 75.00, 12.00, 1, NULL),
(@dd_mg_west_7, 'Lunch', 'Grilled Chicken Breast with Rice and Broccoli', 800, 55.00, 85.00, 18.00, 2, NULL),
(@dd_mg_west_7, 'Dinner', 'Baked Salmon with Quinoa and Roasted Vegetables', 900, 56.00, 80.00, 30.00, 3, NULL),
(@dd_mg_west_7, 'Snack', 'Cottage Cheese with Pineapple and Walnuts', 500, 30.00, 50.00, 18.00, 4, NULL);

  SET FOREIGN_KEY_CHECKS = 1;