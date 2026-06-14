CREATE DATABASE IF NOT EXISTS VirtualFitnessTrainer;
USE VirtualFitnessTrainer;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE User (
    UserID                   INT              UNSIGNED NOT NULL AUTO_INCREMENT,
    Name                     VARCHAR(50)      NOT NULL,
    Email                    VARCHAR(255)     NOT NULL,
    Password_Hash            VARCHAR(255)     NOT NULL,
    Birth_Date               DATE             NOT NULL,
    Gender                   ENUM('Male','Female','Other') NOT NULL,
    Height                   DECIMAL(5,2)     NOT NULL COMMENT 'in cm, range 120-250',
    Weight                   DECIMAL(6,2)     NOT NULL COMMENT 'in kg, range 30-300',
    Body_Type                ENUM('Slim','Average','Athletic','Overweight') NOT NULL,
    Activity_Level           ENUM('Sedentary','Lightly Active','Moderately Active','Very Active','Extra Active') NOT NULL,
    Primary_Goal             ENUM('Weight Loss','Muscle Gain','Maintain Fitness','Improve Endurance','General Health') NOT NULL,
    Target_Weight            DECIMAL(6,2)     NULL COMMENT 'in kg, optional',
    Timeline                 TINYINT          NULL COMMENT '1-12 months',
    Current_Fitness_Level    ENUM('Beginner','Intermediate','Advanced') NOT NULL,
    Workout_Frequency        TINYINT          NOT NULL COMMENT '1-7 days per week',
    Dietery_Preference       ENUM('Vegetarian','Vegan','Non-Vegetarian','Pescatarian') NOT NULL,

    Age                      TINYINT UNSIGNED NULL,
    BMI                      DECIMAL(5,2)     NULL,
    BMR                      DECIMAL(8,2)     NULL,
    TDEE                     DECIMAL(8,2)     NULL,

    Incorrect_Login_Attempts TINYINT UNSIGNED NOT NULL DEFAULT 0,
    Is_Locked                TINYINT(1)       NOT NULL DEFAULT 0,
    Locked_Until             DATETIME         NULL,
    Is_Verified              TINYINT(1)       NOT NULL DEFAULT 0,
    Created_At               DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Updated_At               DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT pk_User            PRIMARY KEY (UserID),
    CONSTRAINT uq_User_Email      UNIQUE (Email),
    CONSTRAINT chk_User_Name      CHECK (CHAR_LENGTH(Name) BETWEEN 2 AND 50),
    CONSTRAINT chk_User_Height    CHECK (Height BETWEEN 120 AND 250),
    CONSTRAINT chk_User_Weight    CHECK (Weight BETWEEN 30 AND 300),
    CONSTRAINT chk_User_Timeline  CHECK (Timeline IS NULL OR Timeline BETWEEN 1 AND 12),
    CONSTRAINT chk_User_Frequency CHECK (Workout_Frequency BETWEEN 1 AND 7),
    CONSTRAINT chk_User_TargetWt  CHECK (Target_Weight IS NULL OR Target_Weight BETWEEN 30 AND 300)
);

CREATE TABLE Health_Condition (
    HealthConID     INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID          INT         UNSIGNED NOT NULL,
    HealthCondition ENUM('Diabetes','Hypertension','Joint Problems','Heart Conditions',
                         'Asthma','Other','None') NOT NULL,

    CONSTRAINT pk_HealthCondition   PRIMARY KEY (HealthConID),
    CONSTRAINT fk_HC_User           FOREIGN KEY (UserID) REFERENCES User(UserID)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_HC_User_Cond      UNIQUE (UserID, HealthCondition)
);

CREATE TABLE Injuries (
    InjuryID    INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID      INT         UNSIGNED NOT NULL,
    Injury      VARCHAR(255) NOT NULL,

    CONSTRAINT pk_Injury    PRIMARY KEY (InjuryID),
    CONSTRAINT fk_Inj_User  FOREIGN KEY (UserID) REFERENCES User(UserID)
                                ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Food_Allergy (
    FoodAllergyID   INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID          INT         UNSIGNED NOT NULL,
    Food_Allergy    VARCHAR(100) NOT NULL,

    CONSTRAINT pk_FoodAllergy       PRIMARY KEY (FoodAllergyID),
    CONSTRAINT fk_FA_User           FOREIGN KEY (UserID) REFERENCES User(UserID)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_FA_User_Allergy   UNIQUE (UserID, Food_Allergy)
);

CREATE TABLE Login_Activity (
    LoginID         INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID          INT         UNSIGNED NULL    COMMENT 'NULL when email not found',
    Email           VARCHAR(255) NOT NULL,
    Remember_Me     TINYINT(1)  NOT NULL DEFAULT 0,
    IsFailed        TINYINT(1)  NOT NULL DEFAULT 0,
    Login_Time      DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    IP_Address      VARCHAR(45) NOT NULL COMMENT 'IPv4 or IPv6',
    Device_Category ENUM('Desktop','Mobile','Tablet','Unknown') NOT NULL DEFAULT 'Unknown',
    OS_Name         VARCHAR(50) NULL,
    OS_Version      VARCHAR(20) NULL,
    Browser_Name    VARCHAR(50) NULL,
    Browser_Version VARCHAR(20) NULL,

    CONSTRAINT pk_LoginActivity PRIMARY KEY (LoginID),
    CONSTRAINT fk_LA_User       FOREIGN KEY (UserID) REFERENCES User(UserID)
                                    ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Exercise (
    ExerciseID              INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    Exercise_Name           VARCHAR(100) NOT NULL,
    Exercise_Category       ENUM('Cardio','Strength','Flexibility','Balance',
                                 'HIIT','Yoga','Pilates','Other') NOT NULL,
    Difficulty_Level        ENUM('Beginner','Intermediate','Advanced') NOT NULL,
    Equipment_Needed        ENUM('None','Dumbbells','Barbell','Resistance Bands',
                                 'Machine','Kettlebell','Other') NOT NULL DEFAULT 'None',
    Calories_Burned_Per_Rep DECIMAL(6,2) NULL,
    Description             TEXT        NULL,
    Tips                    TEXT        NULL,
    Common_Mistakes         TEXT        NULL,

    CONSTRAINT pk_Exercise      PRIMARY KEY (ExerciseID),
    CONSTRAINT uq_Exercise_Name UNIQUE (Exercise_Name)
);

CREATE TABLE Target_Area (
    ExTargetAreaID  INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    ExerciseID      INT         UNSIGNED NOT NULL,
    Target_Area     VARCHAR(50) NOT NULL,

    CONSTRAINT pk_TargetArea    PRIMARY KEY (ExTargetAreaID),
    CONSTRAINT fk_TA_Exercise   FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_TA_Pair       UNIQUE (ExerciseID, Target_Area)
);

CREATE TABLE Muscle_Group (
    MuscleGroupID   INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    ExerciseID      INT         UNSIGNED NOT NULL,
    Muscle_Group    VARCHAR(50) NOT NULL,

    CONSTRAINT pk_MuscleGroup   PRIMARY KEY (MuscleGroupID),
    CONSTRAINT fk_MG_Exercise   FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_MG_Pair       UNIQUE (ExerciseID, Muscle_Group)
);

CREATE TABLE Exercise_Video (
    VideoID         INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    ExerciseID      INT         UNSIGNED NOT NULL,
    URL             VARCHAR(2048) NOT NULL,
    Embedded_Code   TEXT        NULL,
    Language        VARCHAR(10) NOT NULL,

    CONSTRAINT pk_ExerciseVideo PRIMARY KEY (VideoID),
    CONSTRAINT fk_EV_Exercise   FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID)
                                    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Workout_Plan (
    WorkoutPlanID       INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID              INT         UNSIGNED NOT NULL,
    Title               VARCHAR(150) NOT NULL,
    Goal                ENUM('Weight Loss','Muscle Gain','Improve Endurance',
                             'General Health','Maintain Fitness') NOT NULL,
    Plan_Type           ENUM('Home','Gym') NOT NULL DEFAULT 'Home',
    Is_Active           TINYINT(1)  NOT NULL DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
    Start_Date          DATE        NOT NULL,
    End_Date            DATE        NULL,
    Created_At          DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Updated_At          DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT pk_WorkoutPlan   PRIMARY KEY (WorkoutPlanID),
    CONSTRAINT fk_WP_User       FOREIGN KEY (UserID) REFERENCES User(UserID)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT chk_WP_Dates     CHECK (End_Date IS NULL OR End_Date >= Start_Date)
);

CREATE TABLE Workout_Day (
    WorkoutDayID        INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    WorkoutPlanID       INT         UNSIGNED NOT NULL,
    Day_Number          TINYINT     UNSIGNED NOT NULL COMMENT '1-7',
    Day_Name            ENUM('Monday','Tuesday','Wednesday','Thursday',
                             'Friday','Saturday','Sunday') NOT NULL,
    Focus_Area          VARCHAR(100) NULL,
    Session_Duration    SMALLINT    UNSIGNED NULL COMMENT 'minutes',
    Calories_Estimate   SMALLINT    UNSIGNED NULL,
    Is_Rest_Day         TINYINT(1)  NOT NULL DEFAULT 0,
    Notes               TEXT        NULL,

    CONSTRAINT pk_WorkoutDay        PRIMARY KEY (WorkoutDayID),
    CONSTRAINT fk_WD_WorkoutPlan    FOREIGN KEY (WorkoutPlanID) REFERENCES Workout_Plan(WorkoutPlanID)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_WD_PlanDay        UNIQUE (WorkoutPlanID, Day_Number),
    CONSTRAINT chk_WD_DayNumber     CHECK (Day_Number BETWEEN 1 AND 7)
);

CREATE TABLE Workout_Plan_Exercise (
    PlanExerciseID      INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    WorkoutDayID        INT         UNSIGNED NOT NULL,
    ExerciseID          INT         UNSIGNED NOT NULL,
    Setss                TINYINT     UNSIGNED NOT NULL DEFAULT 3,
    Reps                TINYINT     UNSIGNED NULL,
    Rest_Time_Seconds   SMALLINT    UNSIGNED NULL,
    Intensity           ENUM('Low','Medium','High') NOT NULL DEFAULT 'Medium',
    Order_In_Day        TINYINT     UNSIGNED NOT NULL DEFAULT 1,
    Notes               TEXT        NULL,

    CONSTRAINT pk_PlanExercise      PRIMARY KEY (PlanExerciseID),
    CONSTRAINT fk_PE_WorkoutDay     FOREIGN KEY (WorkoutDayID) REFERENCES Workout_Day(WorkoutDayID)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_PE_Exercise       FOREIGN KEY (ExerciseID)  REFERENCES Exercise(ExerciseID)
                                        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_PE_Sets          CHECK (Setss BETWEEN 1 AND 20),
    CONSTRAINT chk_PE_Reps          CHECK (Reps IS NULL OR Reps BETWEEN 1 AND 200)
);

CREATE TABLE Diet_Plan (
    DietPlanID              INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID                  INT         UNSIGNED NOT NULL,
    Title                   VARCHAR(150) NOT NULL,
    Plan_Type               ENUM('Weight Loss','Muscle Gain','Maintenance') NOT NULL,
    Daily_Calorie_Target    SMALLINT    UNSIGNED NOT NULL,
    Protein_Target          DECIMAL(6,2) NOT NULL COMMENT 'grams',
    Carb_Target             DECIMAL(6,2) NOT NULL COMMENT 'grams',
    Fat_Target              DECIMAL(6,2) NOT NULL COMMENT 'grams',
    Duration_Weeks          TINYINT     UNSIGNED NOT NULL DEFAULT 4,
    Cultural_Preference     ENUM('Pakistani/South Asian','Western','Mediterranean','Other') NOT NULL DEFAULT 'Other',
    Budget_Level            ENUM('Low','Medium','High') NOT NULL DEFAULT 'Medium',
    Start_Date              DATE        NOT NULL,
    End_Date                DATE        NULL,
    Is_Active           TINYINT(1)  NOT NULL DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
    Created_At              DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Updated_At              DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT pk_DietPlan      PRIMARY KEY (DietPlanID),
    CONSTRAINT fk_DP_User       FOREIGN KEY (UserID) REFERENCES User(UserID)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT chk_DP_Calories  CHECK (Daily_Calorie_Target >= 1000),
    CONSTRAINT chk_DP_Dates     CHECK (End_Date IS NULL OR End_Date >= Start_Date)
);

CREATE TABLE Diet_Day (
    DietDayID       INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    DietPlanID      INT         UNSIGNED NOT NULL,
    Day_Number      TINYINT     UNSIGNED NOT NULL COMMENT '1-7',
    Day_Name        ENUM('Monday','Tuesday','Wednesday','Thursday',
                         'Friday','Saturday','Sunday') NOT NULL,
    Total_Calories  SMALLINT    UNSIGNED NULL,
    Notes           TEXT        NULL,

    CONSTRAINT pk_DietDay       PRIMARY KEY (DietDayID),
    CONSTRAINT fk_DD_DietPlan   FOREIGN KEY (DietPlanID) REFERENCES Diet_Plan(DietPlanID)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_DD_PlanDay    UNIQUE (DietPlanID, Day_Number),
    CONSTRAINT chk_DD_DayNumber CHECK (Day_Number BETWEEN 1 AND 7)
);

CREATE TABLE Meal (
    MealID          INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    DietDayID       INT         UNSIGNED NOT NULL,
    Meal_Type       ENUM('Breakfast','Lunch','Dinner','Snack','Pre-Workout','Post-Workout') NOT NULL,
    Meal_Name       VARCHAR(150) NOT NULL,
    Calories        SMALLINT    UNSIGNED NOT NULL,
    Protein         DECIMAL(6,2) NOT NULL,
    Carbs           DECIMAL(6,2) NOT NULL,
    Fats            DECIMAL(6,2) NOT NULL,
    Order_In_Day    TINYINT     UNSIGNED NOT NULL DEFAULT 1,
    Notes           TEXT        NULL,

    CONSTRAINT pk_Meal      PRIMARY KEY (MealID),
    CONSTRAINT fk_Meal_DD   FOREIGN KEY (DietDayID) REFERENCES Diet_Day(DietDayID)
                                ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Recipe (
    RecipeID            INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    MealID              INT         UNSIGNED NOT NULL,
    Instructions        TEXT        NOT NULL,
    Preparation_Time    SMALLINT    UNSIGNED NULL COMMENT 'minutes',
    Cooking_Time        SMALLINT    UNSIGNED NULL COMMENT 'minutes',

    CONSTRAINT pk_Recipe        PRIMARY KEY (RecipeID),
    CONSTRAINT fk_Recipe_Meal   FOREIGN KEY (MealID) REFERENCES Meal(MealID)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_Recipe_Meal   UNIQUE (MealID)
);

CREATE TABLE Ingredient (
    IngredientID        INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    Ingredient_Name     VARCHAR(100) NOT NULL,
    Unit                VARCHAR(30) NOT NULL COMMENT 'e.g. grams, ml, piece',
    Calories_Per_Unit   DECIMAL(7,3) NULL,

    CONSTRAINT pk_Ingredient        PRIMARY KEY (IngredientID),
    CONSTRAINT uq_Ingredient_Name   UNIQUE (Ingredient_Name)
);

CREATE TABLE Meal_Ingredient (
    RecipeID          INT         UNSIGNED NOT NULL,
    IngredientID    INT         UNSIGNED NOT NULL,
    Quantity        DECIMAL(8,3) NOT NULL,

    CONSTRAINT pk_MealIngredient    PRIMARY KEY (RecipeID, IngredientID),
    CONSTRAINT fk_MI_Recipe          FOREIGN KEY (RecipeID)       REFERENCES Recipe(RecipeID)
                                        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_MI_Ingredient     FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
                                        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_MI_Qty           CHECK (Quantity > 0)
);

CREATE TABLE Progress_Log (
    LogID               INT          UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID              INT          UNSIGNED NOT NULL,
    WorkoutPlanID       INT          UNSIGNED NULL,
    Log_Date            DATE         NOT NULL,
    Weight              DECIMAL(6,2) NULL COMMENT 'kg',
    Chest               DECIMAL(5,2) NULL COMMENT 'cm',
    Waist               DECIMAL(5,2) NULL COMMENT 'cm',
    Hips                DECIMAL(5,2) NULL COMMENT 'cm',
    Arms                DECIMAL(5,2) NULL COMMENT 'cm',
    Thighs              DECIMAL(5,2) NULL COMMENT 'cm',
    Energy_Level        TINYINT      NULL COMMENT '1-5',
    Mood                ENUM('Great','Good','Neutral','Tired','Poor') NULL,
    Workouts_Completed  TINYINT      UNSIGNED NOT NULL DEFAULT 0,
    Notes               TEXT         NULL,
    Created_At          DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_ProgressLog     PRIMARY KEY (LogID),
    CONSTRAINT fk_PL_User         FOREIGN KEY (UserID) REFERENCES User(UserID)
                                      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_PL_WorkoutPlan  FOREIGN KEY (WorkoutPlanID) REFERENCES Workout_Plan(WorkoutPlanID)
                                      ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT uq_PL_UserDate     UNIQUE (UserID, Log_Date),
    CONSTRAINT chk_PL_EnergyLevel CHECK (Energy_Level IS NULL OR Energy_Level BETWEEN 1 AND 5)
);

DELIMITER $$

CREATE TRIGGER trg_ProgressLog_DateCheck
BEFORE INSERT ON Progress_Log
FOR EACH ROW
BEGIN
    IF NEW.Log_Date > CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Log_Date cannot be a future date.';
    END IF;
END$$

DELIMITER ;

CREATE TABLE ProgressLog_Exercise (
    ProgressLogExerciseID   INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    LogID                   INT         UNSIGNED NOT NULL,
    ExerciseID              INT         UNSIGNED NOT NULL,
    Sets_Completed          TINYINT     UNSIGNED NOT NULL DEFAULT 0,
    Reps_Completed          TINYINT     UNSIGNED NOT NULL DEFAULT 0,
    Notes                   TEXT        NULL,

    CONSTRAINT pk_PLE           PRIMARY KEY (ProgressLogExerciseID),
    CONSTRAINT fk_PLE_Log       FOREIGN KEY (LogID)       REFERENCES Progress_Log(LogID)
                                    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_PLE_Exercise  FOREIGN KEY (ExerciseID)  REFERENCES Exercise(ExerciseID)
                                    ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Recommendation (
    RecommendationID        INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID                  INT         UNSIGNED NOT NULL,
    Source_WorkoutPlanID    INT         UNSIGNED NULL,
    Source_DietPlanID       INT         UNSIGNED NULL,
    Suggested_WorkoutPlanID INT         UNSIGNED NULL,
    Suggested_DietPlanID    INT         UNSIGNED NULL,
    Recommendation_Type     ENUM('Increase Intensity','Decrease Intensity',
                                 'Change Exercises','Diet Adjustment',
                                 'Rest','Other') NOT NULL,
    Trigger_Reason          TEXT        NOT NULL,
    Suggested_Changes       TEXT        NULL,
    Recommendation_Date     DATE        NOT NULL DEFAULT (CURDATE()),
    Status                  ENUM('Pending','Accepted','Modified','Dismissed') NOT NULL DEFAULT 'Pending',
    User_Response_Date      DATE        NULL,
    User_Feedback           TEXT        NULL,

    CONSTRAINT pk_Recommendation        PRIMARY KEY (RecommendationID),
    CONSTRAINT fk_Rec_User              FOREIGN KEY (UserID)                  REFERENCES User(UserID)
                                            ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_Rec_SourceWorkout     FOREIGN KEY (Source_WorkoutPlanID)    REFERENCES Workout_Plan(WorkoutPlanID)
                                            ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_Rec_SourceDiet        FOREIGN KEY (Source_DietPlanID)       REFERENCES Diet_Plan(DietPlanID)
                                            ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_Rec_SuggestedWorkout  FOREIGN KEY (Suggested_WorkoutPlanID) REFERENCES Workout_Plan(WorkoutPlanID)
                                            ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_Rec_SuggestedDiet     FOREIGN KEY (Suggested_DietPlanID)    REFERENCES Diet_Plan(DietPlanID)
                                            ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Profile_Audit_Log (
    AuditID     INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    UserID      INT         UNSIGNED NOT NULL,
    Timestamp   DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_AuditLog  PRIMARY KEY (AuditID),
    CONSTRAINT fk_AL_User   FOREIGN KEY (UserID) REFERENCES User(UserID)
                                ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Audit_Field_Change (
    ChangeID        INT         UNSIGNED NOT NULL AUTO_INCREMENT,
    AuditID         INT         UNSIGNED NOT NULL,
    Field_Changed   VARCHAR(100) NOT NULL,
    Old_Value       TEXT        NULL,
    New_Value       TEXT        NULL,

    CONSTRAINT pk_AuditFieldChange  PRIMARY KEY (ChangeID),
    CONSTRAINT fk_AFC_Audit         FOREIGN KEY (AuditID) REFERENCES Profile_Audit_Log(AuditID)
                                        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE OR REPLACE VIEW vw_User_Active_Plans AS
SELECT
    u.UserID,
    u.Name,
    u.Email,
    u.BMI,
    u.Age,
    wp.WorkoutPlanID,
    wp.Title          AS Workout_Title,
    wp.Goal           AS Workout_Goal,
    wp.Plan_Type,
    wp.Start_Date     AS Workout_Start,
    dp.DietPlanID,
    dp.Title          AS Diet_Title,
    dp.Plan_Type      AS Diet_Type,
    dp.Daily_Calorie_Target,
    dp.Start_Date     AS Diet_Start
FROM User u
LEFT JOIN Workout_Plan wp
       ON wp.UserID = u.UserID AND wp.Is_Active = 1
LEFT JOIN Diet_Plan dp
       ON dp.UserID = u.UserID AND dp.Is_Active = 1;

CREATE OR REPLACE VIEW vw_Exercise_Full AS
SELECT
    e.ExerciseID,
    e.Exercise_Name,
    e.Exercise_Category,
    e.Difficulty_Level,
    e.Equipment_Needed,
    e.Calories_Burned_Per_Rep,
    GROUP_CONCAT(DISTINCT ta.Target_Area  ORDER BY ta.Target_Area  SEPARATOR ', ') AS Target_Areas,
    GROUP_CONCAT(DISTINCT mg.Muscle_Group ORDER BY mg.Muscle_Group SEPARATOR ', ') AS Muscle_Groups
FROM Exercise e
LEFT JOIN Target_Area  ta ON ta.ExerciseID = e.ExerciseID
LEFT JOIN Muscle_Group mg ON mg.ExerciseID = e.ExerciseID
GROUP BY e.ExerciseID;

DELIMITER $$

CREATE TRIGGER trg_LoginActivity_FailedAttempt
AFTER INSERT ON Login_Activity
FOR EACH ROW
BEGIN
    IF NEW.IsFailed = 1 AND NEW.UserID IS NOT NULL THEN
        UPDATE User
        SET Incorrect_Login_Attempts = Incorrect_Login_Attempts + 1
        WHERE UserID = NEW.UserID;
    END IF;
END$$

CREATE TRIGGER trg_LoginActivity_SuccessReset
AFTER INSERT ON Login_Activity
FOR EACH ROW
BEGIN
    IF NEW.IsFailed = 0 AND NEW.UserID IS NOT NULL THEN
        UPDATE User
        SET Incorrect_Login_Attempts = 0,
            Is_Locked                = 0,
            Locked_Until             = NULL
        WHERE UserID = NEW.UserID;
    END IF;
END$$

CREATE TRIGGER trg_User_Before_Update
BEFORE UPDATE ON User
FOR EACH ROW
BEGIN
    DECLARE v_age    TINYINT UNSIGNED;
    DECLARE v_bmr    DECIMAL(8,2);
    DECLARE v_factor DECIMAL(4,3);
    DECLARE v_AuditID INT UNSIGNED;

    -- =============================================
    -- BLOCK 1: Auto-Unlock if lock period expired
    -- =============================================
    IF NEW.Is_Locked = 1 
       AND NEW.Locked_Until IS NOT NULL 
       AND NEW.Locked_Until <= NOW() 
    THEN
        SET NEW.Is_Locked                = 0,
            NEW.Locked_Until             = NULL,
            NEW.Incorrect_Login_Attempts = 0;
    END IF;

    -- =============================================
    -- BLOCK 2: Lock account after 5 failed attempts
    -- =============================================
    IF NEW.Incorrect_Login_Attempts >= 5 AND OLD.Is_Locked = 0 THEN
        SET NEW.Is_Locked    = 1,
            NEW.Locked_Until = DATE_ADD(NOW(), INTERVAL 30 MINUTE);
    END IF;

    -- =============================================
    -- BLOCK 3: Recompute Age, BMI, BMR, TDEE
    -- =============================================
    SET v_age = TIMESTAMPDIFF(YEAR, NEW.Birth_Date, CURDATE());

    IF v_age < 18 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'User must be at least 18 years old.';
    END IF;

    IF NEW.Gender = 'Male' THEN
        SET v_bmr = ROUND((10 * NEW.Weight) + (6.25 * NEW.Height) - (5 * v_age) + 5, 2);
    ELSE
        SET v_bmr = ROUND((10 * NEW.Weight) + (6.25 * NEW.Height) - (5 * v_age) - 161, 2);
    END IF;

    SET v_factor = CASE NEW.Activity_Level
        WHEN 'Sedentary'         THEN 1.2
        WHEN 'Lightly Active'    THEN 1.375
        WHEN 'Moderately Active' THEN 1.55
        WHEN 'Very Active'       THEN 1.725
        WHEN 'Extra Active'      THEN 1.9
    END;

    SET NEW.Age  = v_age;
    SET NEW.BMI  = ROUND(NEW.Weight / POW(NEW.Height / 100, 2), 2);
    SET NEW.BMR  = v_bmr;
    SET NEW.TDEE = ROUND(v_bmr * v_factor, 2);

    -- =============================================
    -- BLOCK 4: Profile Audit Log
    -- =============================================
    IF  OLD.Name                  <> NEW.Name
     OR OLD.Birth_Date            <> NEW.Birth_Date
     OR OLD.Gender                <> NEW.Gender
     OR OLD.Height                <> NEW.Height
     OR OLD.Weight                <> NEW.Weight
     OR OLD.Body_Type             <> NEW.Body_Type
     OR OLD.Activity_Level        <> NEW.Activity_Level
     OR OLD.Primary_Goal          <> NEW.Primary_Goal
     OR (OLD.Target_Weight        <> NEW.Target_Weight OR (OLD.Target_Weight IS NULL AND NEW.Target_Weight IS NOT NULL) OR (OLD.Target_Weight IS NOT NULL AND NEW.Target_Weight IS NULL))
     OR (OLD.Timeline             <> NEW.Timeline      OR (OLD.Timeline IS NULL AND NEW.Timeline IS NOT NULL) OR (OLD.Timeline IS NOT NULL AND NEW.Timeline IS NULL))
     OR OLD.Current_Fitness_Level <> NEW.Current_Fitness_Level
     OR OLD.Workout_Frequency     <> NEW.Workout_Frequency
     OR OLD.Dietery_Preference    <> NEW.Dietery_Preference
    THEN
        INSERT INTO Profile_Audit_Log (UserID, Timestamp)
        VALUES (OLD.UserID, NOW());

        SET v_AuditID = LAST_INSERT_ID();

        IF OLD.Name <> NEW.Name THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Name', OLD.Name, NEW.Name);
        END IF;

        IF OLD.Birth_Date <> NEW.Birth_Date THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Birth_Date', OLD.Birth_Date, NEW.Birth_Date);
        END IF;

        IF OLD.Gender <> NEW.Gender THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Gender', OLD.Gender, NEW.Gender);
        END IF;

        IF OLD.Height <> NEW.Height THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Height', OLD.Height, NEW.Height);
        END IF;

        IF OLD.Weight <> NEW.Weight THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Weight', OLD.Weight, NEW.Weight);
        END IF;

        IF OLD.Body_Type <> NEW.Body_Type THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Body_Type', OLD.Body_Type, NEW.Body_Type);
        END IF;

        IF OLD.Activity_Level <> NEW.Activity_Level THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Activity_Level', OLD.Activity_Level, NEW.Activity_Level);
        END IF;

        IF OLD.Primary_Goal <> NEW.Primary_Goal THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Primary_Goal', OLD.Primary_Goal, NEW.Primary_Goal);
        END IF;

        IF (OLD.Target_Weight <> NEW.Target_Weight)
        OR (OLD.Target_Weight IS NULL AND NEW.Target_Weight IS NOT NULL)
        OR (OLD.Target_Weight IS NOT NULL AND NEW.Target_Weight IS NULL) THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Target_Weight', OLD.Target_Weight, NEW.Target_Weight);
        END IF;

        IF (OLD.Timeline <> NEW.Timeline)
        OR (OLD.Timeline IS NULL AND NEW.Timeline IS NOT NULL)
        OR (OLD.Timeline IS NOT NULL AND NEW.Timeline IS NULL) THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Timeline', OLD.Timeline, NEW.Timeline);
        END IF;

        IF OLD.Current_Fitness_Level <> NEW.Current_Fitness_Level THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Current_Fitness_Level', OLD.Current_Fitness_Level, NEW.Current_Fitness_Level);
        END IF;

        IF OLD.Workout_Frequency <> NEW.Workout_Frequency THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Workout_Frequency', OLD.Workout_Frequency, NEW.Workout_Frequency);
        END IF;

        IF OLD.Dietery_Preference <> NEW.Dietery_Preference THEN
            INSERT INTO Audit_Field_Change (AuditID, Field_Changed, Old_Value, New_Value)
            VALUES (v_AuditID, 'Dietery_Preference', OLD.Dietery_Preference, NEW.Dietery_Preference);
        END IF;

    END IF;

END$$

CREATE TRIGGER trg_WorkoutPlan_DeactivateOld
AFTER INSERT ON Workout_Plan
FOR EACH ROW
BEGIN
    IF NEW.Is_Active = 1 THEN
        UPDATE Workout_Plan
        SET Is_Active = 0
        WHERE UserID = NEW.UserID
          AND Is_Active = 1
          AND WorkoutPlanID <> NEW.WorkoutPlanID;
    END IF;
END$$

CREATE TRIGGER trg_DietPlan_DeactivateOld
AFTER INSERT ON Diet_Plan
FOR EACH ROW
BEGIN
    IF NEW.Is_Active = 1 THEN
        UPDATE Diet_Plan
        SET Is_Active = 0
        WHERE UserID = NEW.UserID
          AND Is_Active = 1
          AND DietPlanID <> NEW.DietPlanID;
    END IF;
END$$

CREATE TRIGGER trg_DietPlan_SetEndDate
BEFORE INSERT ON Diet_Plan
FOR EACH ROW
BEGIN
    IF NEW.End_Date IS NULL THEN
        SET NEW.End_Date = DATE_ADD(NEW.Start_Date, INTERVAL NEW.Duration_Weeks WEEK);
    END IF;
END$$
-- ------------------------------------------------------------
-- fn_GetUserIDByEmail : returns UserID for a given email
-- ------------------------------------------------------------
DROP FUNCTION IF EXISTS fn_GetUserIDByEmail$$
CREATE FUNCTION fn_GetUserIDByEmail(p_Email VARCHAR(255))
RETURNS INT UNSIGNED
READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE v_UserID INT UNSIGNED DEFAULT NULL;
    SELECT UserID INTO v_UserID FROM User WHERE Email = p_Email LIMIT 1;
    RETURN v_UserID;
END$$

-- ------------------------------------------------------------
-- fn_IsEmailTaken : returns 1 if email already registered
-- ------------------------------------------------------------
DROP FUNCTION IF EXISTS fn_IsEmailTaken$$
CREATE FUNCTION fn_IsEmailTaken(p_Email VARCHAR(255))
RETURNS TINYINT(1)
READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE v_Count TINYINT DEFAULT 0;
    SELECT COUNT(*) INTO v_Count FROM User WHERE Email = p_Email;
    RETURN v_Count > 0;
END$$

-- ------------------------------------------------------------
-- fn_IsAccountLocked : returns 1 if user account is locked
-- ------------------------------------------------------------
DROP FUNCTION IF EXISTS fn_IsAccountLocked$$
CREATE FUNCTION fn_IsAccountLocked(p_UserID INT UNSIGNED)
RETURNS TINYINT(1)
READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE v_Locked    TINYINT(1)  DEFAULT 0;
    DECLARE v_Until     DATETIME    DEFAULT NULL;
    SELECT Is_Locked, Locked_Until INTO v_Locked, v_Until
    FROM User WHERE UserID = p_UserID;
    -- Auto-expired lock
    IF v_Locked = 1 AND v_Until IS NOT NULL AND v_Until <= NOW() THEN
        RETURN 0;
    END IF;
    RETURN v_Locked;
END$$

-- ------------------------------------------------------------
-- fn_IsUserVerified : returns 1 if email is verified
-- ------------------------------------------------------------
DROP FUNCTION IF EXISTS fn_IsUserVerified$$
CREATE FUNCTION fn_IsUserVerified(p_UserID INT UNSIGNED)
RETURNS TINYINT(1)
READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE v_Verified TINYINT(1) DEFAULT 0;
    SELECT Is_Verified INTO v_Verified FROM User WHERE UserID = p_UserID;
    RETURN IFNULL(v_Verified, 0);
END$$

-- ------------------------------------------------------------
-- fn_CalcBMI  : returns BMI for given weight(kg) & height(cm)
-- ------------------------------------------------------------
DROP FUNCTION IF EXISTS fn_CalcBMI$$
CREATE FUNCTION fn_CalcBMI(p_Weight DECIMAL(6,2), p_Height DECIMAL(5,2))
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    RETURN ROUND(p_Weight / POW(p_Height / 100, 2), 2);
END$$

-- ------------------------------------------------------------
-- fn_CalcBMR : returns BMR using Mifflin-St Jeor
-- ------------------------------------------------------------
DROP FUNCTION IF EXISTS fn_CalcBMR$$
CREATE FUNCTION fn_CalcBMR(
    p_Weight DECIMAL(6,2),
    p_Height DECIMAL(5,2),
    p_Age    TINYINT UNSIGNED,
    p_Gender ENUM('Male','Female','Other'))
RETURNS DECIMAL(8,2)
DETERMINISTIC
BEGIN
    IF p_Gender = 'Male' THEN
        RETURN ROUND((10 * p_Weight) + (6.25 * p_Height) - (5 * p_Age) + 5, 2);
    ELSE
        RETURN ROUND((10 * p_Weight) + (6.25 * p_Height) - (5 * p_Age) - 161, 2);
    END IF;
END$$

-- ============================================================
-- SECTION 2 — USER REGISTRATION & AUTHENTICATION
-- ============================================================

-- ------------------------------------------------------------
-- sp_RegisterUser
-- FR-1: Registers a new user after validating all fields.
-- OUT p_Status : 'SUCCESS' | 'EMAIL_TAKEN' | 'UNDERAGE' | 'ERROR'
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_RegisterUser$$
CREATE PROCEDURE sp_RegisterUser(
    IN  p_Name              VARCHAR(50),
    IN  p_Email             VARCHAR(255),
    IN  p_Password_Hash     VARCHAR(255),
    IN  p_Birth_Date        DATE,
    IN  p_Gender            ENUM('Male','Female','Other'),
    IN  p_Height            DECIMAL(5,2),
    IN  p_Weight            DECIMAL(6,2),
    IN  p_Body_Type         ENUM('Slim','Average','Athletic','Overweight'),
    IN  p_Activity_Level    ENUM('Sedentary','Lightly Active','Moderately Active','Very Active','Extra Active'),
    IN  p_Primary_Goal      ENUM('Weight Loss','Muscle Gain','Maintain Fitness','Improve Endurance','General Health'),
    IN  p_Target_Weight     DECIMAL(6,2),
    IN  p_Timeline          TINYINT,
    IN  p_Fitness_Level     ENUM('Beginner','Intermediate','Advanced'),
    IN  p_Workout_Frequency TINYINT,
    IN  p_Diet_Preference   ENUM('Vegetarian','Vegan','Non-Vegetarian','Pescatarian'),
    OUT p_NewUserID         INT UNSIGNED,
    OUT p_Status            VARCHAR(50)
)
proc_body: BEGIN
    DECLARE v_Age TINYINT UNSIGNED;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET p_Status = 'ERROR';
        ROLLBACK;
    END;

    SET p_NewUserID = NULL;
    SET p_Status    = 'ERROR';

    -- Validate email uniqueness
    IF fn_IsEmailTaken(p_Email) THEN
        SET p_Status = 'EMAIL_TAKEN';
        LEAVE proc_body;
    END IF;

    -- Validate age
    SET v_Age = TIMESTAMPDIFF(YEAR, p_Birth_Date, CURDATE());
    IF v_Age < 18 THEN
        SET p_Status = 'UNDERAGE';
        LEAVE proc_body;
    END IF;

    START TRANSACTION;

    INSERT INTO User (
        Name, Email, Password_Hash, Birth_Date, Gender,
        Height, Weight, Body_Type, Activity_Level, Primary_Goal,
        Target_Weight, Timeline, Current_Fitness_Level,
        Workout_Frequency, Dietery_Preference, Is_Verified
    ) VALUES (
        p_Name, p_Email, p_Password_Hash, p_Birth_Date, p_Gender,
        p_Height, p_Weight, p_Body_Type, p_Activity_Level, p_Primary_Goal,
        p_Target_Weight, p_Timeline, p_Fitness_Level,
        p_Workout_Frequency, p_Diet_Preference, 0
    );

    SET p_NewUserID = LAST_INSERT_ID();
    SET p_Status    = 'SUCCESS';
    COMMIT;
END$$

-- ------------------------------------------------------------
-- sp_AddHealthCondition
-- FR-1: Adds a health condition for a user (called after registration)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddHealthCondition$$
CREATE PROCEDURE sp_AddHealthCondition(
    IN  p_UserID        INT UNSIGNED,
    IN  p_Condition     ENUM('Diabetes','Hypertension','Joint Problems','Heart Conditions','Asthma','Other','None'),
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'DUPLICATE_OR_ERROR';
    INSERT IGNORE INTO Health_Condition (UserID, HealthCondition) VALUES (p_UserID, p_Condition);
    SET p_Status = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_AddInjury
-- FR-1: Records a user injury/limitation
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddInjury$$
CREATE PROCEDURE sp_AddInjury(
    IN  p_UserID    INT UNSIGNED,
    IN  p_Injury    VARCHAR(255),
    OUT p_Status    VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    INSERT INTO Injuries (UserID, Injury) VALUES (p_UserID, p_Injury);
    SET p_Status = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_AddFoodAllergy
-- FR-1 / FR-4: Records a food allergy for a user
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddFoodAllergy$$
CREATE PROCEDURE sp_AddFoodAllergy(
    IN  p_UserID        INT UNSIGNED,
    IN  p_Allergy       VARCHAR(100),
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'DUPLICATE_OR_ERROR';
    INSERT IGNORE INTO Food_Allergy (UserID, Food_Allergy) VALUES (p_UserID, p_Allergy);
    SET p_Status = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_VerifyUserEmail
-- FR-1: Marks the user email as verified
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_VerifyUserEmail$$
CREATE PROCEDURE sp_VerifyUserEmail(
    IN  p_UserID    INT UNSIGNED,
    OUT p_Status    VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    UPDATE User SET Is_Verified = 1 WHERE UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'USER_NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_LoginUser
-- FR-2: Authenticates a user. Logs the attempt.
-- OUT p_Status: 'SUCCESS' | 'INVALID_CREDENTIALS' | 'ACCOUNT_LOCKED'
--               | 'EMAIL_NOT_FOUND' | 'NOT_VERIFIED'
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_LoginUser$$
CREATE PROCEDURE sp_LoginUser(
    IN  p_Email         VARCHAR(255),
    IN  p_Password_Hash VARCHAR(255),
    IN  p_Remember_Me   TINYINT(1),
    IN  p_IP_Address    VARCHAR(45),
    IN  p_Device        ENUM('Desktop','Mobile','Tablet','Unknown'),
    IN  p_OS_Name       VARCHAR(50),
    IN  p_OS_Version    VARCHAR(20),
    IN  p_Browser_Name  VARCHAR(50),
    IN  p_Browser_Ver   VARCHAR(20),
    OUT p_UserID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
proc_body: BEGIN
    DECLARE v_StoredHash    VARCHAR(255);
    DECLARE v_IsLocked      TINYINT(1);
    DECLARE v_IsVerified    TINYINT(1);
    DECLARE v_LockedUntil   DATETIME;
    DECLARE v_IsFailed      TINYINT(1) DEFAULT 0;

    SET p_UserID = NULL;
    SET p_Status = 'INVALID_CREDENTIALS';

    -- Find user by email
    SELECT UserID, Password_Hash, Is_Locked, Locked_Until, Is_Verified
    INTO   p_UserID, v_StoredHash, v_IsLocked, v_LockedUntil, v_IsVerified
    FROM   User
    WHERE  Email = p_Email
    LIMIT  1;

    IF p_UserID IS NULL THEN
        SET p_Status = 'EMAIL_NOT_FOUND';
        INSERT INTO Login_Activity (UserID, Email, Remember_Me, IsFailed, IP_Address,
            Device_Category, OS_Name, OS_Version, Browser_Name, Browser_Version)
        VALUES (NULL, p_Email, p_Remember_Me, 1, p_IP_Address,
            p_Device, p_OS_Name, p_OS_Version, p_Browser_Name, p_Browser_Ver);
        LEAVE proc_body;
    END IF;

    -- Auto-unlock if lock period expired
    IF v_IsLocked = 1 AND v_LockedUntil IS NOT NULL AND v_LockedUntil <= NOW() THEN
        UPDATE User SET Is_Locked = 0, Locked_Until = NULL, Incorrect_Login_Attempts = 0
        WHERE UserID = p_UserID;
        SET v_IsLocked = 0;
    END IF;

    -- Check if locked
    IF v_IsLocked = 1 THEN
        SET p_Status = 'ACCOUNT_LOCKED';
        LEAVE proc_body;
    END IF;

    -- Check email verification
    IF v_IsVerified = 0 THEN
        SET p_Status   = 'NOT_VERIFIED';
        SET v_IsFailed = 1;
        INSERT INTO Login_Activity (UserID, Email, Remember_Me, IsFailed, IP_Address,
            Device_Category, OS_Name, OS_Version, Browser_Name, Browser_Version)
        VALUES (p_UserID, p_Email, p_Remember_Me, v_IsFailed, p_IP_Address,
            p_Device, p_OS_Name, p_OS_Version, p_Browser_Name, p_Browser_Ver);
        LEAVE proc_body;
    END IF;

    -- Validate password
    IF v_StoredHash <> p_Password_Hash THEN
        SET p_Status   = 'INVALID_CREDENTIALS';
        SET v_IsFailed = 1;
        INSERT INTO Login_Activity (UserID, Email, Remember_Me, IsFailed, IP_Address,
            Device_Category, OS_Name, OS_Version, Browser_Name, Browser_Version)
        VALUES (p_UserID, p_Email, p_Remember_Me, v_IsFailed, p_IP_Address,
            p_Device, p_OS_Name, p_OS_Version, p_Browser_Name, p_Browser_Ver);
        LEAVE proc_body;
    END IF;

    -- SUCCESS
    SET p_Status = 'SUCCESS';
    INSERT INTO Login_Activity (UserID, Email, Remember_Me, IsFailed, IP_Address,
        Device_Category, OS_Name, OS_Version, Browser_Name, Browser_Version)
    VALUES (p_UserID, p_Email, p_Remember_Me, 0, p_IP_Address,
        p_Device, p_OS_Name, p_OS_Version, p_Browser_Name, p_Browser_Ver);
END$$

-- ============================================================
-- SECTION 3 — USER PROFILE MANAGEMENT (FR-9)
-- ============================================================

-- ------------------------------------------------------------
-- sp_GetUserProfile
-- FR-9: Returns full profile for dashboard display
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetUserProfile$$
CREATE PROCEDURE sp_GetUserProfile(IN p_UserID INT UNSIGNED)
BEGIN
    -- Main profile
    SELECT
        u.UserID, u.Name, u.Email, u.Birth_Date, u.Gender,
        u.Height, u.Weight, u.Body_Type, u.Activity_Level,
        u.Primary_Goal, u.Target_Weight, u.Timeline,
        u.Current_Fitness_Level, u.Workout_Frequency,
        u.Dietery_Preference, u.Age, u.BMI, u.BMR, u.TDEE,
        u.Is_Verified, u.Created_At
    FROM User u
    WHERE u.UserID = p_UserID;

    -- Health conditions
    SELECT HealthCondition FROM Health_Condition WHERE UserID = p_UserID;

    -- Injuries
    SELECT InjuryID, Injury FROM Injuries WHERE UserID = p_UserID;

    -- Food allergies
    SELECT FoodAllergyID, Food_Allergy FROM Food_Allergy WHERE UserID = p_UserID;
END$$

-- ------------------------------------------------------------
-- sp_UpdateUserProfile
-- FR-9: Updates user profile fields and auto-triggers audit log
-- OUT p_Status: 'SUCCESS' | 'USER_NOT_FOUND' | 'ERROR'
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_UpdateUserProfile$$
CREATE PROCEDURE sp_UpdateUserProfile(
    IN  p_UserID            INT UNSIGNED,
    IN  p_Name              VARCHAR(50),
    IN  p_Birth_Date        DATE,
    IN  p_Gender            ENUM('Male','Female','Other'),
    IN  p_Height            DECIMAL(5,2),
    IN  p_Weight            DECIMAL(6,2),
    IN  p_Body_Type         ENUM('Slim','Average','Athletic','Overweight'),
    IN  p_Activity_Level    ENUM('Sedentary','Lightly Active','Moderately Active','Very Active','Extra Active'),
    IN  p_Primary_Goal      ENUM('Weight Loss','Muscle Gain','Maintain Fitness','Improve Endurance','General Health'),
    IN  p_Target_Weight     DECIMAL(6,2),
    IN  p_Timeline          TINYINT,
    IN  p_Fitness_Level     ENUM('Beginner','Intermediate','Advanced'),
    IN  p_Workout_Frequency TINYINT,
    IN  p_Diet_Preference   ENUM('Vegetarian','Vegan','Non-Vegetarian','Pescatarian'),
    OUT p_Status            VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';

    UPDATE User SET
        Name                 = p_Name,
        Birth_Date           = p_Birth_Date,
        Gender               = p_Gender,
        Height               = p_Height,
        Weight               = p_Weight,
        Body_Type            = p_Body_Type,
        Activity_Level       = p_Activity_Level,
        Primary_Goal         = p_Primary_Goal,
        Target_Weight        = p_Target_Weight,
        Timeline             = p_Timeline,
        Current_Fitness_Level = p_Fitness_Level,
        Workout_Frequency    = p_Workout_Frequency,
        Dietery_Preference   = p_Diet_Preference
    WHERE UserID = p_UserID;

    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'USER_NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_UpdateUserPassword
-- FR-9 / FR-2: Updates hashed password for the user
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_UpdateUserPassword$$
CREATE PROCEDURE sp_UpdateUserPassword(
    IN  p_UserID        INT UNSIGNED,
    IN  p_NewPassHash   VARCHAR(255),
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    UPDATE User SET Password_Hash = p_NewPassHash WHERE UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'USER_NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_DeleteInjury / sp_DeleteFoodAllergy / sp_DeleteHealthCondition
-- FR-9: Remove specific health records for profile management
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_DeleteInjury$$
CREATE PROCEDURE sp_DeleteInjury(
    IN  p_InjuryID  INT UNSIGNED,
    IN  p_UserID    INT UNSIGNED,
    OUT p_Status    VARCHAR(50)
)
BEGIN
    DELETE FROM Injuries WHERE InjuryID = p_InjuryID AND UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

DROP PROCEDURE IF EXISTS sp_DeleteFoodAllergy$$
CREATE PROCEDURE sp_DeleteFoodAllergy(
    IN  p_FoodAllergyID INT UNSIGNED,
    IN  p_UserID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DELETE FROM Food_Allergy WHERE FoodAllergyID = p_FoodAllergyID AND UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

DROP PROCEDURE IF EXISTS sp_DeleteHealthCondition$$
CREATE PROCEDURE sp_DeleteHealthCondition(
    IN  p_HealthConID   INT UNSIGNED,
    IN  p_UserID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DELETE FROM Health_Condition WHERE HealthConID = p_HealthConID AND UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_DeleteUserAccount
-- FR-9 / NFR-2.7: Permanently deletes a user and all their data
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_DeleteUserAccount$$
CREATE PROCEDURE sp_DeleteUserAccount(
    IN  p_UserID    INT UNSIGNED,
    OUT p_Status    VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    START TRANSACTION;
    DELETE FROM User WHERE UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'USER_NOT_FOUND');
    COMMIT;
END$$

-- ------------------------------------------------------------
-- sp_GetProfileAuditLog
-- FR-9.4: Returns the full audit trail for a user's profile
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetProfileAuditLog$$
CREATE PROCEDURE sp_GetProfileAuditLog(IN p_UserID INT UNSIGNED)
BEGIN
    SELECT
        pal.AuditID,
        pal.Timestamp,
        afc.Field_Changed,
        afc.Old_Value,
        afc.New_Value
    FROM Profile_Audit_Log pal
    JOIN Audit_Field_Change afc ON afc.AuditID = pal.AuditID
    WHERE pal.UserID = p_UserID
    ORDER BY pal.Timestamp DESC;
END$$

-- ============================================================
-- SECTION 4 — EXERCISE LIBRARY (FR-5)
-- ============================================================

-- ------------------------------------------------------------
-- sp_GetAllExercises
-- FR-5: Returns paginated exercise library
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetAllExercises$$
CREATE PROCEDURE sp_GetAllExercises(
    IN p_Category       VARCHAR(20),
    IN p_Difficulty     VARCHAR(20),
    IN p_Equipment      VARCHAR(30),
    IN p_SearchName     VARCHAR(100),
    IN p_Offset         INT,
    IN p_Limit          INT
)
BEGIN
    SELECT
        e.ExerciseID,
        e.Exercise_Name,
        e.Exercise_Category,
        e.Difficulty_Level,
        e.Equipment_Needed,
        e.Calories_Burned_Per_Rep,
        e.Description,
        e.Tips,
        e.Common_Mistakes,
        GROUP_CONCAT(DISTINCT ta.Target_Area  ORDER BY ta.Target_Area  SEPARATOR ', ') AS Target_Areas,
        GROUP_CONCAT(DISTINCT mg.Muscle_Group ORDER BY mg.Muscle_Group SEPARATOR ', ') AS Muscle_Groups,
        ANY_VALUE(ev.URL)            AS Video_URL,
        ANY_VALUE(ev.Embedded_Code)  AS Embedded_Code
    FROM Exercise e
    LEFT JOIN Target_Area  ta ON ta.ExerciseID = e.ExerciseID
    LEFT JOIN Muscle_Group mg ON mg.ExerciseID = e.ExerciseID
    LEFT JOIN Exercise_Video ev ON ev.ExerciseID = e.ExerciseID AND ev.Language = 'en'
    WHERE (p_Category   IS NULL OR e.Exercise_Category = p_Category)
      AND (p_Difficulty IS NULL OR e.Difficulty_Level  = p_Difficulty)
      AND (p_Equipment  IS NULL OR e.Equipment_Needed  = p_Equipment)
      AND (p_SearchName IS NULL OR e.Exercise_Name LIKE CONCAT('%', p_SearchName, '%'))
    GROUP BY e.ExerciseID
    ORDER BY e.Exercise_Name
    LIMIT p_Limit OFFSET p_Offset;
END$$

-- ------------------------------------------------------------
-- sp_GetExerciseDetail
-- FR-5: Returns full details + videos for one exercise
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetExerciseDetail$$
CREATE PROCEDURE sp_GetExerciseDetail(IN p_ExerciseID INT UNSIGNED)
BEGIN
    SELECT
        e.ExerciseID, e.Exercise_Name, e.Exercise_Category,
        e.Difficulty_Level, e.Equipment_Needed,
        e.Calories_Burned_Per_Rep, e.Description, e.Tips, e.Common_Mistakes
    FROM Exercise e
    WHERE e.ExerciseID = p_ExerciseID;

    SELECT Target_Area  FROM Target_Area  WHERE ExerciseID = p_ExerciseID;
    SELECT Muscle_Group FROM Muscle_Group WHERE ExerciseID = p_ExerciseID;
    SELECT VideoID, URL, Language FROM Exercise_Video WHERE ExerciseID = p_ExerciseID;
END$$

-- ------------------------------------------------------------
-- sp_AddExercise
-- Admin: Insert a new exercise into the library
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddExercise$$
CREATE PROCEDURE sp_AddExercise(
    IN  p_Name          VARCHAR(100),
    IN  p_Category      ENUM('Cardio','Strength','Flexibility','Balance','HIIT','Yoga','Pilates','Other'),
    IN  p_Difficulty    ENUM('Beginner','Intermediate','Advanced'),
    IN  p_Equipment     ENUM('None','Dumbbells','Barbell','Resistance Bands','Machine','Kettlebell','Other'),
    IN  p_CalPerRep     DECIMAL(6,2),
    IN  p_Description   TEXT,
    IN  p_Tips          TEXT,
    IN  p_Mistakes      TEXT,
    OUT p_ExerciseID    INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'DUPLICATE_OR_ERROR';
    INSERT INTO Exercise (Exercise_Name, Exercise_Category, Difficulty_Level,
        Equipment_Needed, Calories_Burned_Per_Rep, Description, Tips, Common_Mistakes)
    VALUES (p_Name, p_Category, p_Difficulty, p_Equipment, p_CalPerRep, p_Description, p_Tips, p_Mistakes);
    SET p_ExerciseID = LAST_INSERT_ID();
    SET p_Status     = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_UpdateExercise
-- Admin: Update exercise details
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_UpdateExercise$$
CREATE PROCEDURE sp_UpdateExercise(
    IN  p_ExerciseID    INT UNSIGNED,
    IN  p_Name          VARCHAR(100),
    IN  p_Category      ENUM('Cardio','Strength','Flexibility','Balance','HIIT','Yoga','Pilates','Other'),
    IN  p_Difficulty    ENUM('Beginner','Intermediate','Advanced'),
    IN  p_Equipment     ENUM('None','Dumbbells','Barbell','Resistance Bands','Machine','Kettlebell','Other'),
    IN  p_CalPerRep     DECIMAL(6,2),
    IN  p_Description   TEXT,
    IN  p_Tips          TEXT,
    IN  p_Mistakes      TEXT,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    UPDATE Exercise SET
        Exercise_Name           = p_Name,
        Exercise_Category       = p_Category,
        Difficulty_Level        = p_Difficulty,
        Equipment_Needed        = p_Equipment,
        Calories_Burned_Per_Rep = p_CalPerRep,
        Description             = p_Description,
        Tips                    = p_Tips,
        Common_Mistakes         = p_Mistakes
    WHERE ExerciseID = p_ExerciseID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_DeleteExercise
-- Admin: Soft delete exercise (only if not used in any plan)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_DeleteExercise$$
CREATE PROCEDURE sp_DeleteExercise(
    IN  p_ExerciseID    INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
proc_body: BEGIN
    DECLARE v_InUse INT DEFAULT 0;
    SELECT COUNT(*) INTO v_InUse
    FROM Workout_Plan_Exercise WHERE ExerciseID = p_ExerciseID;

    IF v_InUse > 0 THEN
        SET p_Status = 'IN_USE_CANNOT_DELETE';
        LEAVE proc_body;
    END IF;

    DELETE FROM Exercise WHERE ExerciseID = p_ExerciseID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$
-- ============================================================
-- SECTION 5 — WORKOUT PLAN MANAGEMENT (FR-3)
-- ============================================================

-- ------------------------------------------------------------
-- sp_CreateWorkoutPlan
-- FR-3: Creates a new workout plan (trigger deactivates old one)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_CreateWorkoutPlan$$
CREATE PROCEDURE sp_CreateWorkoutPlan(
    IN  p_UserID        INT UNSIGNED,
    IN  p_Title         VARCHAR(150),
    IN  p_Goal          ENUM('Weight Loss','Muscle Gain','Improve Endurance','General Health','Maintain Fitness'),
    IN  p_PlanType      ENUM('Home','Gym'),
    IN  p_StartDate     DATE,
    IN  p_EndDate       DATE,
    OUT p_PlanID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN SET p_Status = 'ERROR'; ROLLBACK; END;

    START TRANSACTION;

    -- Manually deactivate old plan (avoids trigger same-table issue in bulk inserts)
    UPDATE Workout_Plan SET Is_Active = 0 WHERE UserID = p_UserID AND Is_Active = 1;

    -- Drop trigger temporarily not needed here since we UPDATE before INSERT
    INSERT INTO Workout_Plan (UserID, Title, Goal, Plan_Type, Is_Active, Start_Date, End_Date)
    VALUES (p_UserID, p_Title, p_Goal, p_PlanType, 1, p_StartDate, p_EndDate);

    SET p_PlanID = LAST_INSERT_ID();
    SET p_Status = 'SUCCESS';
    COMMIT;
END$$

-- ------------------------------------------------------------
-- sp_AddWorkoutDay
-- FR-3: Adds a day entry to a workout plan
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddWorkoutDay$$
CREATE PROCEDURE sp_AddWorkoutDay(
    IN  p_WorkoutPlanID     INT UNSIGNED,
    IN  p_DayNumber         TINYINT UNSIGNED,
    IN  p_DayName           ENUM('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'),
    IN  p_FocusArea         VARCHAR(100),
    IN  p_Duration          SMALLINT UNSIGNED,
    IN  p_CaloriesEstimate  SMALLINT UNSIGNED,
    IN  p_IsRestDay         TINYINT(1),
    IN  p_Notes             TEXT,
    OUT p_WorkoutDayID      INT UNSIGNED,
    OUT p_Status            VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'DUPLICATE_OR_ERROR';
    INSERT INTO Workout_Day (WorkoutPlanID, Day_Number, Day_Name, Focus_Area,
        Session_Duration, Calories_Estimate, Is_Rest_Day, Notes)
    VALUES (p_WorkoutPlanID, p_DayNumber, p_DayName, p_FocusArea,
        p_Duration, p_CaloriesEstimate, p_IsRestDay, p_Notes);
    SET p_WorkoutDayID = LAST_INSERT_ID();
    SET p_Status       = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_AddExerciseToWorkoutDay
-- FR-3: Assigns an exercise to a specific workout day
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddExerciseToWorkoutDay$$
CREATE PROCEDURE sp_AddExerciseToWorkoutDay(
    IN  p_WorkoutDayID      INT UNSIGNED,
    IN  p_ExerciseID        INT UNSIGNED,
    IN  p_Sets              TINYINT UNSIGNED,
    IN  p_Reps              TINYINT UNSIGNED,
    IN  p_RestSeconds       SMALLINT UNSIGNED,
    IN  p_Intensity         ENUM('Low','Medium','High'),
    IN  p_OrderInDay        TINYINT UNSIGNED,
    IN  p_Notes             TEXT,
    OUT p_PlanExerciseID    INT UNSIGNED,
    OUT p_Status            VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    INSERT INTO Workout_Plan_Exercise (WorkoutDayID, ExerciseID, Setss, Reps,
        Rest_Time_Seconds, Intensity, Order_In_Day, Notes)
    VALUES (p_WorkoutDayID, p_ExerciseID, p_Sets, p_Reps,
        p_RestSeconds, p_Intensity, p_OrderInDay, p_Notes);
    SET p_PlanExerciseID = LAST_INSERT_ID();
    SET p_Status         = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_GetWorkoutPlan
-- FR-3: Returns full workout plan with all days and exercises
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetWorkoutPlan$$
CREATE PROCEDURE sp_GetWorkoutPlan(IN p_WorkoutPlanID INT UNSIGNED)
BEGIN
    -- Plan header
    SELECT WorkoutPlanID, UserID, Title, Goal, Plan_Type,
           Is_Active, Start_Date, End_Date, Created_At
    FROM Workout_Plan WHERE WorkoutPlanID = p_WorkoutPlanID;

    -- Days with exercises
    SELECT
        wd.WorkoutDayID, wd.Day_Number, wd.Day_Name,
        wd.Focus_Area, wd.Session_Duration, wd.Calories_Estimate,
        wd.Is_Rest_Day, wd.Notes AS Day_Notes,
        wpe.PlanExerciseID, wpe.ExerciseID,
        e.Exercise_Name, e.Exercise_Category, e.Difficulty_Level,
        e.Equipment_Needed, e.Calories_Burned_Per_Rep,
        wpe.Setss, wpe.Reps, wpe.Rest_Time_Seconds,
        wpe.Intensity, wpe.Order_In_Day, wpe.Notes AS Exercise_Notes,
        ev.URL AS Video_URL
    FROM Workout_Day wd
    LEFT JOIN Workout_Plan_Exercise wpe ON wpe.WorkoutDayID = wd.WorkoutDayID
    LEFT JOIN Exercise              e   ON e.ExerciseID     = wpe.ExerciseID
    LEFT JOIN Exercise_Video        ev  ON ev.ExerciseID    = wpe.ExerciseID AND ev.Language = 'en'
    WHERE wd.WorkoutPlanID = p_WorkoutPlanID
    ORDER BY wd.Day_Number, wpe.Order_In_Day;
END$$

-- ------------------------------------------------------------
-- sp_GetUserWorkoutPlans
-- FR-3: Returns all workout plans for a user (summary list)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetUserWorkoutPlans$$
CREATE PROCEDURE sp_GetUserWorkoutPlans(IN p_UserID INT UNSIGNED)
BEGIN
    SELECT WorkoutPlanID, Title, Goal, Plan_Type, Is_Active,
           Start_Date, End_Date, Created_At
    FROM Workout_Plan
    WHERE UserID = p_UserID
    ORDER BY Is_Active DESC, Created_At DESC;
END$$

-- ------------------------------------------------------------
-- sp_UpdateWorkoutPlanExercise
-- FR-3.5: Edit sets/reps/intensity for an exercise in a plan
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_UpdateWorkoutPlanExercise$$
CREATE PROCEDURE sp_UpdateWorkoutPlanExercise(
    IN  p_PlanExerciseID    INT UNSIGNED,
    IN  p_Sets              TINYINT UNSIGNED,
    IN  p_Reps              TINYINT UNSIGNED,
    IN  p_RestSeconds       SMALLINT UNSIGNED,
    IN  p_Intensity         ENUM('Low','Medium','High'),
    IN  p_OrderInDay        TINYINT UNSIGNED,
    IN  p_Notes             TEXT,
    OUT p_Status            VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    UPDATE Workout_Plan_Exercise SET
        Setss             = p_Sets,
        Reps              = p_Reps,
        Rest_Time_Seconds = p_RestSeconds,
        Intensity         = p_Intensity,
        Order_In_Day      = p_OrderInDay,
        Notes             = p_Notes
    WHERE PlanExerciseID = p_PlanExerciseID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_DeactivateWorkoutPlan
-- FR-3: Mark a workout plan as inactive
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_DeactivateWorkoutPlan$$
CREATE PROCEDURE sp_DeactivateWorkoutPlan(
    IN  p_WorkoutPlanID INT UNSIGNED,
    IN  p_UserID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    UPDATE Workout_Plan SET Is_Active = 0
    WHERE WorkoutPlanID = p_WorkoutPlanID AND UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_DeleteWorkoutPlan
-- FR-3: Delete a workout plan (cascades to days & exercises)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_DeleteWorkoutPlan$$
CREATE PROCEDURE sp_DeleteWorkoutPlan(
    IN  p_WorkoutPlanID INT UNSIGNED,
    IN  p_UserID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DELETE FROM Workout_Plan WHERE WorkoutPlanID = p_WorkoutPlanID AND UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ============================================================
-- SECTION 6 — DIET PLAN MANAGEMENT (FR-4)
-- ============================================================

-- ------------------------------------------------------------
-- sp_CreateDietPlan
-- FR-4: Creates a new diet plan (trigger deactivates old one)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_CreateDietPlan$$
CREATE PROCEDURE sp_CreateDietPlan(
    IN  p_UserID            INT UNSIGNED,
    IN  p_Title             VARCHAR(150),
    IN  p_PlanType          ENUM('Weight Loss','Muscle Gain','Maintenance'),
    IN  p_CalorieTarget     SMALLINT UNSIGNED,
    IN  p_ProteinTarget     DECIMAL(6,2),
    IN  p_CarbTarget        DECIMAL(6,2),
    IN  p_FatTarget         DECIMAL(6,2),
    IN  p_DurationWeeks     TINYINT UNSIGNED,
    IN  p_CulturalPref      ENUM('Pakistani/South Asian','Western','Mediterranean','Other'),
    IN  p_BudgetLevel       ENUM('Low','Medium','High'),
    IN  p_StartDate         DATE,
    OUT p_DietPlanID        INT UNSIGNED,
    OUT p_Status            VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN SET p_Status = 'ERROR'; ROLLBACK; END;

    START TRANSACTION;
    -- Manually deactivate old plan first (avoids trigger same-table conflict)
    UPDATE Diet_Plan SET Is_Active = 0 WHERE UserID = p_UserID AND Is_Active = 1;

    INSERT INTO Diet_Plan (UserID, Title, Plan_Type, Daily_Calorie_Target,
        Protein_Target, Carb_Target, Fat_Target, Duration_Weeks,
        Cultural_Preference, Budget_Level, Start_Date, Is_Active)
    VALUES (p_UserID, p_Title, p_PlanType, p_CalorieTarget,
        p_ProteinTarget, p_CarbTarget, p_FatTarget, p_DurationWeeks,
        p_CulturalPref, p_BudgetLevel, p_StartDate, 1);

    SET p_DietPlanID = LAST_INSERT_ID();
    SET p_Status     = 'SUCCESS';
    COMMIT;
END$$

-- ------------------------------------------------------------
-- sp_AddDietDay
-- FR-4: Adds a day to a diet plan
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddDietDay$$
CREATE PROCEDURE sp_AddDietDay(
    IN  p_DietPlanID    INT UNSIGNED,
    IN  p_DayNumber     TINYINT UNSIGNED,
    IN  p_DayName       ENUM('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'),
    IN  p_TotalCalories SMALLINT UNSIGNED,
    IN  p_Notes         TEXT,
    OUT p_DietDayID     INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'DUPLICATE_OR_ERROR';
    INSERT INTO Diet_Day (DietPlanID, Day_Number, Day_Name, Total_Calories, Notes)
    VALUES (p_DietPlanID, p_DayNumber, p_DayName, p_TotalCalories, p_Notes);
    SET p_DietDayID = LAST_INSERT_ID();
    SET p_Status    = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_AddMeal
-- FR-4: Adds a meal to a diet day
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddMeal$$
CREATE PROCEDURE sp_AddMeal(
    IN  p_DietDayID     INT UNSIGNED,
    IN  p_MealType      ENUM('Breakfast','Lunch','Dinner','Snack','Pre-Workout','Post-Workout'),
    IN  p_MealName      VARCHAR(150),
    IN  p_Calories      SMALLINT UNSIGNED,
    IN  p_Protein       DECIMAL(6,2),
    IN  p_Carbs         DECIMAL(6,2),
    IN  p_Fats          DECIMAL(6,2),
    IN  p_OrderInDay    TINYINT UNSIGNED,
    IN  p_Notes         TEXT,
    OUT p_MealID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    INSERT INTO Meal (DietDayID, Meal_Type, Meal_Name, Calories,
        Protein, Carbs, Fats, Order_In_Day, Notes)
    VALUES (p_DietDayID, p_MealType, p_MealName, p_Calories,
        p_Protein, p_Carbs, p_Fats, p_OrderInDay, p_Notes);
    SET p_MealID = LAST_INSERT_ID();
    SET p_Status = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_AddRecipeToMeal
-- FR-4.5: Adds/replaces recipe instructions for a meal
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddRecipeToMeal$$
CREATE PROCEDURE sp_AddRecipeToMeal(
    IN  p_MealID        INT UNSIGNED,
    IN  p_Instructions  TEXT,
    IN  p_PrepTime      SMALLINT UNSIGNED,
    IN  p_CookTime      SMALLINT UNSIGNED,
    OUT p_RecipeID      INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    -- REPLACE handles the unique constraint (one recipe per meal)
    INSERT INTO Recipe (MealID, Instructions, Preparation_Time, Cooking_Time)
    VALUES (p_MealID, p_Instructions, p_PrepTime, p_CookTime)
    ON DUPLICATE KEY UPDATE
        Instructions     = p_Instructions,
        Preparation_Time = p_PrepTime,
        Cooking_Time     = p_CookTime;
    SET p_RecipeID = LAST_INSERT_ID();
    SET p_Status   = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_GetDietPlan
-- FR-4: Returns full diet plan with all days, meals, recipes
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetDietPlan$$
CREATE PROCEDURE sp_GetDietPlan(IN p_DietPlanID INT UNSIGNED)
BEGIN
    -- Plan header
    SELECT DietPlanID, UserID, Title, Plan_Type,
           Daily_Calorie_Target, Protein_Target, Carb_Target, Fat_Target,
           Duration_Weeks, Cultural_Preference, Budget_Level,
           Start_Date, End_Date, Is_Active, Created_At
    FROM Diet_Plan WHERE DietPlanID = p_DietPlanID;

    -- Days → Meals → Recipes
    SELECT
        dd.DietDayID, dd.Day_Number, dd.Day_Name, dd.Total_Calories,
        m.MealID, m.Meal_Type, m.Meal_Name, m.Calories,
        m.Protein, m.Carbs, m.Fats, m.Order_In_Day, m.Notes AS Meal_Notes,
        r.RecipeID, r.Instructions, r.Preparation_Time, r.Cooking_Time
    FROM Diet_Day dd
    LEFT JOIN Meal   m ON m.DietDayID = dd.DietDayID
    LEFT JOIN Recipe r ON r.MealID    = m.MealID
    WHERE dd.DietPlanID = p_DietPlanID
    ORDER BY dd.Day_Number, m.Order_In_Day;
END$$

-- ------------------------------------------------------------
-- sp_GetUserDietPlans
-- FR-4: Returns all diet plans for a user (summary list)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetUserDietPlans$$
CREATE PROCEDURE sp_GetUserDietPlans(IN p_UserID INT UNSIGNED)
BEGIN
    SELECT DietPlanID, Title, Plan_Type, Daily_Calorie_Target,
           Is_Active, Start_Date, End_Date, Created_At
    FROM Diet_Plan
    WHERE UserID = p_UserID
    ORDER BY Is_Active DESC, Created_At DESC;
END$$

-- ------------------------------------------------------------
-- sp_GetMealIngredients
-- FR-4.4 shopping list: Returns all ingredients for a recipe
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetMealIngredients$$
CREATE PROCEDURE sp_GetMealIngredients(IN p_RecipeID INT UNSIGNED)
BEGIN
    SELECT
        i.IngredientID, i.Ingredient_Name, i.Unit,
        i.Calories_Per_Unit,
        mi.Quantity,
        ROUND(i.Calories_Per_Unit * mi.Quantity, 2) AS Total_Calories
    FROM Meal_Ingredient mi
    JOIN Ingredient i ON i.IngredientID = mi.IngredientID
    WHERE mi.RecipeID = p_RecipeID
    ORDER BY i.Ingredient_Name;
END$$

-- ------------------------------------------------------------
-- sp_GetWeeklyShoppingList
-- FR-4.4: Aggregated shopping list for an entire diet plan week
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetWeeklyShoppingList$$
CREATE PROCEDURE sp_GetWeeklyShoppingList(IN p_DietPlanID INT UNSIGNED)
BEGIN
    SELECT
        i.Ingredient_Name,
        i.Unit,
        SUM(mi.Quantity) AS Total_Quantity,
        ROUND(SUM(mi.Quantity * i.Calories_Per_Unit), 2) AS Total_Calories
    FROM Diet_Plan dp
    JOIN Diet_Day       dd  ON dd.DietPlanID  = dp.DietPlanID
    JOIN Meal           m   ON m.DietDayID    = dd.DietDayID
    JOIN Recipe         r   ON r.MealID       = m.MealID
    JOIN Meal_Ingredient mi ON mi.RecipeID    = r.RecipeID
    JOIN Ingredient      i  ON i.IngredientID = mi.IngredientID
    WHERE dp.DietPlanID = p_DietPlanID
    GROUP BY i.IngredientID, i.Ingredient_Name, i.Unit
    ORDER BY i.Ingredient_Name;
END$$

-- ------------------------------------------------------------
-- sp_DeleteDietPlan
-- FR-4: Delete a diet plan (cascades to days, meals, recipes)
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_DeleteDietPlan$$
CREATE PROCEDURE sp_DeleteDietPlan(
    IN  p_DietPlanID    INT UNSIGNED,
    IN  p_UserID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DELETE FROM Diet_Plan WHERE DietPlanID = p_DietPlanID AND UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ============================================================
-- SECTION 7 — PROGRESS TRACKING (FR-6)
-- ============================================================

-- ------------------------------------------------------------
-- sp_LogDailyProgress
-- FR-6: Inserts or updates a daily progress log entry
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_LogWeeklyProgress$$
CREATE PROCEDURE sp_LogWeeklyProgress(
    IN  p_UserID            INT UNSIGNED,
    IN  p_WorkoutPlanID     INT UNSIGNED,
    IN  p_LogDate           DATE,
    IN  p_Weight            DECIMAL(6,2),
    IN  p_Chest             DECIMAL(5,2),
    IN  p_Waist             DECIMAL(5,2),
    IN  p_Hips              DECIMAL(5,2),
    IN  p_Arms              DECIMAL(5,2),
    IN  p_Thighs            DECIMAL(5,2),
    IN  p_EnergyLevel       TINYINT,
    IN  p_Mood              ENUM('Great','Good','Neutral','Tired','Poor'),
    IN  p_WorkoutsCompleted TINYINT UNSIGNED,
    IN  p_Notes             TEXT,
    OUT p_LogID             INT UNSIGNED,
    OUT p_Status            VARCHAR(50)
)
proc_body: BEGIN
    DECLARE v_ExistingLogID  INT UNSIGNED DEFAULT NULL;
    DECLARE v_ExistingDate   DATE         DEFAULT NULL;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';

    -- 1. Block future dates
    IF p_LogDate > CURDATE() THEN
        SET p_Status = 'FUTURE_DATE_NOT_ALLOWED';
        LEAVE proc_body;
    END IF;

    -- 2. Check if a log already exists in the same ISO week for this user
    SELECT LogID, Log_Date
    INTO   v_ExistingLogID, v_ExistingDate
    FROM   Progress_Log
    WHERE  UserID = p_UserID
      AND  YEARWEEK(Log_Date, 3) = YEARWEEK(p_LogDate, 3)
    LIMIT  1;

    IF v_ExistingLogID IS NOT NULL THEN
        -- 3a. Same exact day → allow UPDATE
        IF v_ExistingDate = p_LogDate THEN
            UPDATE Progress_Log SET
                WorkoutPlanID      = p_WorkoutPlanID,
                Weight             = p_Weight,
                Chest              = p_Chest,
                Waist              = p_Waist,
                Hips               = p_Hips,
                Arms               = p_Arms,
                Thighs             = p_Thighs,
                Energy_Level       = p_EnergyLevel,
                Mood               = p_Mood,
                Workouts_Completed = p_WorkoutsCompleted,
                Notes              = p_Notes
            WHERE LogID = v_ExistingLogID;
            SET p_LogID  = v_ExistingLogID;
            SET p_Status = 'UPDATED';
        ELSE
            -- 3b. Different day but same week → reject
            SET p_LogID  = v_ExistingLogID;
            SET p_Status = 'WEEK_ALREADY_LOGGED';
        END IF;
    ELSE
        -- 4. No log this week → INSERT
        INSERT INTO Progress_Log (
            UserID, WorkoutPlanID, Log_Date, Weight,
            Chest, Waist, Hips, Arms, Thighs,
            Energy_Level, Mood, Workouts_Completed, Notes)
        VALUES (
            p_UserID, p_WorkoutPlanID, p_LogDate, p_Weight,
            p_Chest, p_Waist, p_Hips, p_Arms, p_Thighs,
            p_EnergyLevel, p_Mood, p_WorkoutsCompleted, p_Notes);
        SET p_LogID  = LAST_INSERT_ID();
        SET p_Status = 'CREATED';
    END IF;
END$$

-- ------------------------------------------------------------
-- sp_LogExerciseCompletion
-- FR-6.1: Records individual exercise completion within a log
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_LogExerciseCompletion$$
CREATE PROCEDURE sp_LogExerciseCompletion(
    IN  p_LogID             INT UNSIGNED,
    IN  p_ExerciseID        INT UNSIGNED,
    IN  p_SetsCompleted     TINYINT UNSIGNED,
    IN  p_RepsCompleted     TINYINT UNSIGNED,
    IN  p_Notes             TEXT,
    OUT p_PLEID             INT UNSIGNED,
    OUT p_Status            VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    INSERT INTO ProgressLog_Exercise (LogID, ExerciseID, Sets_Completed, Reps_Completed, Notes)
    VALUES (p_LogID, p_ExerciseID, p_SetsCompleted, p_RepsCompleted, p_Notes);
    SET p_PLEID  = LAST_INSERT_ID();
    SET p_Status = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_GetProgressLog
-- FR-6 / FR-7: Returns progress logs for a user in a date range
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetProgressLog$$
CREATE PROCEDURE sp_GetProgressLog(
    IN p_UserID     INT UNSIGNED,
    IN p_DateFrom   DATE,
    IN p_DateTo     DATE
)
BEGIN
    -- Weekly logs with weight change from previous weekly entry
    SELECT
        pl.LogID,
        pl.Log_Date,
        YEARWEEK(pl.Log_Date, 3)                                                    AS Year_Week,
        pl.Weight,
        pl.Chest,
        pl.Waist,
        pl.Hips,
        pl.Arms,
        pl.Thighs,
        pl.Energy_Level,
        pl.Mood,
        pl.Workouts_Completed,
        pl.Notes,
        ROUND(
            pl.Weight - LAG(pl.Weight) OVER (PARTITION BY pl.UserID ORDER BY pl.Log_Date)
        , 2)                                                                         AS Weight_Change_From_Last_Week
    FROM Progress_Log pl
    WHERE pl.UserID   = p_UserID
      AND pl.Log_Date BETWEEN p_DateFrom AND p_DateTo
    ORDER BY pl.Log_Date;

    -- Exercise completions within the same range
    SELECT
        ple.LogID,
        pl.Log_Date,
        YEARWEEK(pl.Log_Date, 3)    AS Year_Week,
        e.Exercise_Name,
        ple.Sets_Completed,
        ple.Reps_Completed,
        ple.Notes
    FROM ProgressLog_Exercise ple
    JOIN Progress_Log pl ON pl.LogID       = ple.LogID
    JOIN Exercise     e  ON e.ExerciseID   = ple.ExerciseID
    WHERE pl.UserID   = p_UserID
      AND pl.Log_Date BETWEEN p_DateFrom AND p_DateTo
    ORDER BY pl.Log_Date, e.Exercise_Name;
END$$

-- ------------------------------------------------------------
-- sp_DeleteProgressLog
-- FR-6: Removes a specific progress log entry
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_DeleteProgressLog$$
CREATE PROCEDURE sp_DeleteProgressLog(
    IN  p_LogID     INT UNSIGNED,
    IN  p_UserID    INT UNSIGNED,
    OUT p_Status    VARCHAR(50)
)
BEGIN
    DELETE FROM Progress_Log WHERE LogID = p_LogID AND UserID = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ============================================================
-- SECTION 8 — PROGRESS REPORTS (FR-7)
-- ============================================================

-- ------------------------------------------------------------
-- sp_GetWeeklyProgressReport
-- FR-7.1: Summary stats for a 7-day window
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetWeeklyProgressReport$$
CREATE PROCEDURE sp_GetWeeklyProgressReport(
    IN p_UserID     INT UNSIGNED,
    IN p_WeekStart  DATE          -- any date inside the target week
)
BEGIN
    DECLARE v_ISOWeekStart DATE;
    DECLARE v_ISOWeekEnd   DATE;

    -- Derive exact Monday and Sunday of the ISO week
    SET v_ISOWeekStart = DATE_SUB(p_WeekStart, INTERVAL (DAYOFWEEK(p_WeekStart) + 5) % 7 DAY);
    SET v_ISOWeekEnd   = DATE_ADD(v_ISOWeekStart, INTERVAL 6 DAY);

    -- Weekly summary (one row per week since only one log exists per week)
    SELECT
        v_ISOWeekStart                                                            AS Week_Start,
        v_ISOWeekEnd                                                              AS Week_End,
        COUNT(*)                                                                  AS Logs_In_Week,
        COALESCE(SUM(pl.Workouts_Completed), 0)                                   AS Total_Workouts,
        COALESCE(MIN(pl.Weight), 0.00)                                            AS Min_Weight,
        COALESCE(MAX(pl.Weight), 0.00)                                            AS Max_Weight,
        COALESCE(ROUND(AVG(pl.Weight),       2), 0.00)                            AS Avg_Weight,
        COALESCE(ROUND(AVG(pl.Energy_Level), 2), 0.00)                            AS Avg_Energy,
        COALESCE(SUM(CASE WHEN pl.Mood IN ('Great','Good') THEN 1 ELSE 0 END), 0) AS Positive_Mood_Count
    FROM Progress_Log pl
    WHERE pl.UserID   = p_UserID
      AND pl.Log_Date BETWEEN v_ISOWeekStart AND v_ISOWeekEnd;

    -- The single log entry detail for this week
    SELECT
        pl.LogID,
        pl.Log_Date,
        pl.Weight,
        pl.Chest,
        pl.Waist,
        pl.Hips,
        pl.Arms,
        pl.Thighs,
        pl.Workouts_Completed,
        pl.Energy_Level,
        pl.Mood,
        pl.Notes
    FROM Progress_Log pl
    WHERE pl.UserID   = p_UserID
      AND pl.Log_Date BETWEEN v_ISOWeekStart AND v_ISOWeekEnd
    LIMIT 1;
END$$

-- ------------------------------------------------------------
-- sp_GetMonthlyProgressReport
-- FR-7.2: Comprehensive monthly analytics
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetMonthlyProgressReport$$
CREATE PROCEDURE sp_GetMonthlyProgressReport(
    IN p_UserID INT UNSIGNED,
    IN p_Year   SMALLINT,
    IN p_Month  TINYINT
)
BEGIN
    DECLARE v_FirstDay DATE;
    DECLARE v_LastDay  DATE;
    SET v_FirstDay = STR_TO_DATE(CONCAT(p_Year, '-', LPAD(p_Month, 2, '0'), '-01'), '%Y-%m-%d');
    SET v_LastDay  = LAST_DAY(v_FirstDay);

    -- Monthly summary across all weekly logs in this month
    SELECT
        COUNT(*)                                  AS Weeks_Logged,
        IFNULL(SUM(Workouts_Completed), 0)        AS Total_Workouts,
        IFNULL(ROUND(AVG(Workouts_Completed), 2), 0.00) AS Avg_Weekly_Workouts,
        -- First and last weight entry give actual progress delta
        IFNULL(
            (SELECT Weight FROM Progress_Log
             WHERE UserID = p_UserID AND Log_Date BETWEEN v_FirstDay AND v_LastDay
             ORDER BY Log_Date ASC  LIMIT 1)
        , 0.00)                                    AS Start_Weight,
        IFNULL(
            (SELECT Weight FROM Progress_Log
             WHERE UserID = p_UserID AND Log_Date BETWEEN v_FirstDay AND v_LastDay
             ORDER BY Log_Date DESC LIMIT 1)
        , 0.00)                                    AS End_Weight,
        IFNULL(
            ROUND(
                IFNULL(
                    (SELECT Weight FROM Progress_Log
                     WHERE UserID = p_UserID AND Log_Date BETWEEN v_FirstDay AND v_LastDay
                     ORDER BY Log_Date DESC LIMIT 1)
                , 0.00)
                -
                IFNULL(
                    (SELECT Weight FROM Progress_Log
                     WHERE UserID = p_UserID AND Log_Date BETWEEN v_FirstDay AND v_LastDay
                     ORDER BY Log_Date ASC  LIMIT 1)
                , 0.00)
            , 2)
        , 0.00)                                    AS Total_Weight_Change,
        IFNULL(ROUND(AVG(Weight),       2), 0.00)  AS Avg_Weight,
        IFNULL(ROUND(AVG(Energy_Level), 2), 0.00)  AS Avg_Energy,
        IFNULL(ROUND(AVG(Chest),        2), 0.00)  AS Avg_Chest,
        IFNULL(ROUND(AVG(Waist),        2), 0.00)  AS Avg_Waist,
        IFNULL(ROUND(AVG(Hips),         2), 0.00)  AS Avg_Hips,
        IFNULL(ROUND(AVG(Arms),         2), 0.00)  AS Avg_Arms,
        IFNULL(ROUND(AVG(Thighs),       2), 0.00)  AS Avg_Thighs,
        v_FirstDay                                  AS Month_Start,
        v_LastDay                                   AS Month_End
    FROM Progress_Log
    WHERE UserID   = p_UserID
      AND Log_Date BETWEEN v_FirstDay AND v_LastDay;

    -- Week-by-week breakdown within the month (one row per weekly log)
    SELECT
        YEARWEEK(Log_Date, 3)       AS ISO_Year_Week,
        Log_Date                    AS Logged_On,
        Weight,
        Workouts_Completed,
        Energy_Level,
        Mood
    FROM Progress_Log
    WHERE UserID   = p_UserID
      AND Log_Date BETWEEN v_FirstDay AND v_LastDay
    ORDER BY Log_Date;

    -- Top 5 most completed exercises across all weekly logs this month
    SELECT
        e.Exercise_Name,
        COUNT(*)                AS Times_Performed,
        SUM(ple.Sets_Completed) AS Total_Sets,
        SUM(ple.Reps_Completed) AS Total_Reps
    FROM ProgressLog_Exercise ple
    JOIN Progress_Log pl ON pl.LogID      = ple.LogID
    JOIN Exercise     e  ON e.ExerciseID  = ple.ExerciseID
    WHERE pl.UserID   = p_UserID
      AND pl.Log_Date BETWEEN v_FirstDay AND v_LastDay
    GROUP BY ple.ExerciseID, e.Exercise_Name
    ORDER BY Times_Performed DESC
    LIMIT 5;
END$$

-- ============================================================
-- SECTION 9 — ADAPTIVE RECOMMENDATIONS (FR-8)
-- ============================================================

-- ------------------------------------------------------------
-- sp_CreateRecommendation
-- FR-8: Inserts a system-generated recommendation for a user
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_CreateRecommendation$$
CREATE PROCEDURE sp_CreateRecommendation(
    IN  p_UserID                INT UNSIGNED,
    IN  p_Source_WorkoutPlanID  INT UNSIGNED,
    IN  p_Source_DietPlanID     INT UNSIGNED,
    IN  p_RecType               ENUM('Increase Intensity','Decrease Intensity','Change Exercises','Diet Adjustment','Rest','Other'),
    IN  p_TriggerReason         TEXT,
    IN  p_SuggestedChanges      TEXT,
    OUT p_RecommendationID      INT UNSIGNED,
    OUT p_Status                VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    INSERT INTO Recommendation (UserID, Source_WorkoutPlanID, Source_DietPlanID,
        Recommendation_Type, Trigger_Reason, Suggested_Changes,
        Recommendation_Date, Status)
    VALUES (p_UserID, p_Source_WorkoutPlanID, p_Source_DietPlanID,
        p_RecType, p_TriggerReason, p_SuggestedChanges, CURDATE(), 'Pending');
    SET p_RecommendationID = LAST_INSERT_ID();
    SET p_Status           = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_GetUserRecommendations
-- FR-8: Returns all recommendations for a user
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetUserRecommendations$$
CREATE PROCEDURE sp_GetUserRecommendations(
    IN p_UserID     INT UNSIGNED,
    IN p_StatusFilter VARCHAR(20)   -- NULL = all; 'Pending','Accepted','Dismissed','Modified'
)
BEGIN
    SELECT
        r.RecommendationID, r.Recommendation_Type,
        r.Trigger_Reason, r.Suggested_Changes,
        r.Recommendation_Date, r.Status,
        r.User_Response_Date, r.User_Feedback,
        wp.Title  AS Source_Workout_Title,
        dp.Title  AS Source_Diet_Title
    FROM Recommendation r
    LEFT JOIN Workout_Plan wp ON wp.WorkoutPlanID = r.Source_WorkoutPlanID
    LEFT JOIN Diet_Plan    dp ON dp.DietPlanID    = r.Source_DietPlanID
    WHERE r.UserID = p_UserID
      AND (p_StatusFilter IS NULL OR r.Status = p_StatusFilter)
    ORDER BY r.Recommendation_Date DESC;
END$$

-- ------------------------------------------------------------
-- sp_RespondToRecommendation
-- FR-8.4: User accepts, modifies, or dismisses a recommendation
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_RespondToRecommendation$$
CREATE PROCEDURE sp_RespondToRecommendation(
    IN  p_RecommendationID  INT UNSIGNED,
    IN  p_UserID            INT UNSIGNED,
    IN  p_NewStatus         ENUM('Accepted','Modified','Dismissed'),
    IN  p_UserFeedback      TEXT,
    OUT p_Status            VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'ERROR';
    UPDATE Recommendation SET
        Status             = p_NewStatus,
        User_Response_Date = CURDATE(),
        User_Feedback      = p_UserFeedback
    WHERE RecommendationID = p_RecommendationID
      AND UserID           = p_UserID;
    SET p_Status = IF(ROW_COUNT() > 0, 'SUCCESS', 'NOT_FOUND');
END$$

-- ------------------------------------------------------------
-- sp_AnalyzeProgressForRecommendation
-- FR-8.1: Checks last 4 weeks of progress and returns a
--         suggestion code for the AI/GUI layer to act on.
-- Returns: plateau / on_track / ahead / behind / insufficient_data
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AnalyzeProgressForRecommendation$$
CREATE PROCEDURE sp_AnalyzeProgressForRecommendation(
    IN  p_UserID        INT UNSIGNED,
    IN  p_WorkoutPlanID INT UNSIGNED,
    OUT p_Suggestion    VARCHAR(30),
    OUT p_Reason        TEXT
)
proc_body: BEGIN
    DECLARE v_LogCount      INT DEFAULT 0;
    DECLARE v_FirstWeight   DECIMAL(6,2);
    DECLARE v_LastWeight    DECIMAL(6,2);
    DECLARE v_WeightDiff    DECIMAL(6,2);
    DECLARE v_AvgWorkouts   DECIMAL(5,2);
    DECLARE v_Goal          VARCHAR(50);
    DECLARE v_FourWeeksAgo  DATE;

    SET v_FourWeeksAgo = DATE_SUB(CURDATE(), INTERVAL 28 DAY);

    SELECT COUNT(*), AVG(Workouts_Completed)
    INTO   v_LogCount, v_AvgWorkouts
    FROM   Progress_Log
    WHERE  UserID = p_UserID AND Log_Date >= v_FourWeeksAgo;

    -- Require at least 2 weekly logs (was 7 daily; now weekly-based)
    IF v_LogCount < 2 THEN
        SET p_Suggestion = 'insufficient_data';
        SET p_Reason     = 'Less than 2 weekly progress entries in the past 4 weeks.';
        LEAVE proc_body;
    END IF;

    SELECT Weight INTO v_FirstWeight
    FROM   Progress_Log
    WHERE  UserID = p_UserID AND Log_Date >= v_FourWeeksAgo AND Weight IS NOT NULL
    ORDER  BY Log_Date ASC LIMIT 1;

    SELECT Weight INTO v_LastWeight
    FROM   Progress_Log
    WHERE  UserID = p_UserID AND Weight IS NOT NULL
    ORDER  BY Log_Date DESC LIMIT 1;

    SELECT Primary_Goal INTO v_Goal FROM User WHERE UserID = p_UserID;

    SET v_WeightDiff = IFNULL(v_LastWeight - v_FirstWeight, 0);

    -- Evaluate based on goal
    IF v_Goal = 'Weight Loss' THEN
        IF v_WeightDiff >= -0.2 AND v_WeightDiff <= 0.2 THEN
            SET p_Suggestion = 'plateau';
            SET p_Reason     = 'Weight has not changed in 4 weeks. Consider increasing intensity or adjusting diet.';
        ELSEIF v_WeightDiff < -2.0 THEN
            SET p_Suggestion = 'ahead';
            SET p_Reason     = 'Excellent progress! Weight loss exceeds targets. Consider maintenance phase.';
        ELSEIF v_WeightDiff BETWEEN -2.0 AND -0.2 THEN
            SET p_Suggestion = 'on_track';
            SET p_Reason     = 'Good steady progress. Keep following the current plan.';
        ELSE
            SET p_Suggestion = 'behind';
            SET p_Reason     = 'Weight has increased. Review diet compliance and workout intensity.';
        END IF;
    ELSEIF v_Goal = 'Muscle Gain' THEN
        IF v_WeightDiff < 0 THEN
            SET p_Suggestion = 'behind';
            SET p_Reason     = 'Weight decreasing during muscle gain phase. Increase caloric intake.';
        ELSEIF v_WeightDiff BETWEEN 0 AND 0.5 THEN
            SET p_Suggestion = 'on_track';
            SET p_Reason     = 'Steady lean gain. Continue current program.';
        ELSE
            SET p_Suggestion = 'ahead';
            SET p_Reason     = 'Good muscle gain progress. Consider progressive overload increase.';
        END IF;
    ELSE
        IF ABS(v_WeightDiff) <= 0.5 THEN
            SET p_Suggestion = 'on_track';
            SET p_Reason     = 'Weight is stable. Good maintenance.';
        ELSE
            SET p_Suggestion = 'behind';
            SET p_Reason     = 'Weight fluctuating beyond maintenance range. Rebalance diet and exercise.';
        END IF;
    END IF;
END$$

-- ============================================================
-- SECTION 10 — DASHBOARD & REPORTING VIEWS (FR-7)
-- ============================================================

-- ------------------------------------------------------------
-- sp_GetUserDashboard
-- GUI Dashboard: All data needed to render the main dashboard
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetUserDashboard$$
CREATE PROCEDURE sp_GetUserDashboard(IN p_UserID INT UNSIGNED)
BEGIN
    -- 1. User summary
    SELECT UserID, Name, Age, BMI, BMR, TDEE,
           Primary_Goal, Current_Fitness_Level, Activity_Level
    FROM User WHERE UserID = p_UserID;

    -- 2. Active workout plan summary
    SELECT wp.WorkoutPlanID, wp.Title, wp.Goal, wp.Plan_Type,
           wp.Start_Date, wp.End_Date,
           COUNT(DISTINCT wd.WorkoutDayID)  AS Total_Days,
           COUNT(DISTINCT wpe.ExerciseID)   AS Total_Exercises
    FROM Workout_Plan wp
    LEFT JOIN Workout_Day          wd  ON wd.WorkoutPlanID = wp.WorkoutPlanID AND wd.Is_Rest_Day = 0
    LEFT JOIN Workout_Plan_Exercise wpe ON wpe.WorkoutDayID = wd.WorkoutDayID
    WHERE wp.UserID = p_UserID AND wp.Is_Active = 1
    GROUP BY wp.WorkoutPlanID;

    -- 3. Active diet plan summary
    SELECT DietPlanID, Title, Plan_Type,
           Daily_Calorie_Target, Protein_Target, Carb_Target, Fat_Target,
           Start_Date, End_Date
    FROM Diet_Plan WHERE UserID = p_UserID AND Is_Active = 1;

    -- 4. Last 4 weekly progress logs (replaces last 7 days)
    SELECT
        Log_Date,
        YEARWEEK(Log_Date, 3)   AS ISO_Year_Week,
        Weight,
        Workouts_Completed,
        Energy_Level,
        Mood
    FROM Progress_Log
    WHERE UserID = p_UserID
    ORDER BY Log_Date DESC
    LIMIT 4;

    -- 5. Pending recommendations count
    SELECT COUNT(*) AS Pending_Recommendations
    FROM Recommendation WHERE UserID = p_UserID AND Status = 'Pending';

    -- 6. Login activity (last 5 sessions)
    SELECT Login_Time, IP_Address, Device_Category, IsFailed
    FROM Login_Activity
    WHERE UserID = p_UserID
    ORDER BY Login_Time DESC LIMIT 5;
END$$

-- ------------------------------------------------------------
-- sp_GetWorkoutStreak
-- FR-6.4: Calculates current consecutive workout streak
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetWorkoutStreak$$
CREATE PROCEDURE sp_GetWorkoutStreak(
    IN  p_UserID    INT UNSIGNED,
    OUT p_Streak    INT
)
BEGIN
    DECLARE v_CurrentWeek   INT;
    DECLARE v_LogWeek       INT;
    DECLARE v_PrevWeek      INT DEFAULT NULL;
    DECLARE v_Done          TINYINT DEFAULT 0;

    DECLARE cur CURSOR FOR
        SELECT YEARWEEK(Log_Date, 3)
        FROM   Progress_Log
        WHERE  UserID = p_UserID AND Workouts_Completed > 0
        GROUP  BY YEARWEEK(Log_Date, 3)
        ORDER  BY YEARWEEK(Log_Date, 3) DESC;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_Done = 1;

    SET p_Streak     = 0;
    SET v_CurrentWeek = YEARWEEK(CURDATE(), 3);

    OPEN cur;
    streak_loop: LOOP
        FETCH cur INTO v_LogWeek;
        IF v_Done THEN LEAVE streak_loop; END IF;

        IF v_PrevWeek IS NULL THEN
            -- First row: must be current week or last week to start streak
            IF v_LogWeek = v_CurrentWeek OR v_LogWeek = v_CurrentWeek - 1 THEN
                SET p_Streak  = 1;
                SET v_PrevWeek = v_LogWeek;
            ELSE
                LEAVE streak_loop;
            END IF;
        ELSE
            -- Each subsequent week must be exactly 1 week before the previous
            IF v_LogWeek = v_PrevWeek - 1 THEN
                SET p_Streak   = p_Streak + 1;
                SET v_PrevWeek = v_LogWeek;
            ELSE
                LEAVE streak_loop;
            END IF;
        END IF;
    END LOOP;
    CLOSE cur;
END$$
-- ============================================================
-- SECTION 11 — INGREDIENT & RECIPE MANAGEMENT
-- ============================================================

-- ------------------------------------------------------------
-- sp_AddIngredient
-- Admin/GUI: Add a new ingredient to the master list
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddIngredient$$
CREATE PROCEDURE sp_AddIngredient(
    IN  p_Name          VARCHAR(100),
    IN  p_Unit          VARCHAR(30),
    IN  p_CalPerUnit    DECIMAL(7,3),
    OUT p_IngredientID  INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'DUPLICATE_OR_ERROR';
    INSERT IGNORE INTO Ingredient (Ingredient_Name, Unit, Calories_Per_Unit)
    VALUES (p_Name, p_Unit, p_CalPerUnit);
    SET p_IngredientID = LAST_INSERT_ID();
    SET p_Status       = IF(p_IngredientID > 0, 'SUCCESS', 'DUPLICATE');
END$$

-- ------------------------------------------------------------
-- sp_AddIngredientToRecipe
-- FR-4.5: Links an ingredient with a quantity to a recipe
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_AddIngredientToRecipe$$
CREATE PROCEDURE sp_AddIngredientToRecipe(
    IN  p_RecipeID      INT UNSIGNED,
    IN  p_IngredientID  INT UNSIGNED,
    IN  p_Quantity      DECIMAL(8,3),
    OUT p_Status        VARCHAR(50)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION SET p_Status = 'DUPLICATE_OR_ERROR';
    INSERT INTO Meal_Ingredient (RecipeID, IngredientID, Quantity)
    VALUES (p_RecipeID, p_IngredientID, p_Quantity)
    ON DUPLICATE KEY UPDATE Quantity = p_Quantity;
    SET p_Status = 'SUCCESS';
END$$

-- ------------------------------------------------------------
-- sp_GetAllIngredients
-- GUI: Search/list ingredients for recipe builder
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetAllIngredients$$
CREATE PROCEDURE sp_GetAllIngredients(IN p_Search VARCHAR(100))
BEGIN
    SELECT IngredientID, Ingredient_Name, Unit, Calories_Per_Unit
    FROM Ingredient
    WHERE (p_Search IS NULL OR Ingredient_Name LIKE CONCAT('%', p_Search, '%'))
    ORDER BY Ingredient_Name;
END$$

-- ============================================================
-- SECTION 12 — ADMIN / REPORTING PROCEDURES
-- ============================================================

-- ------------------------------------------------------------
-- sp_GetLoginActivityReport
-- Admin: Login history for a user or all users
-- ------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_GetLoginActivityReport$$
CREATE PROCEDURE sp_GetLoginActivityReport(
    IN p_UserID     INT UNSIGNED,   -- NULL = all users
    IN p_DateFrom   DATE,
    IN p_DateTo     DATE
)
BEGIN
    SELECT
        la.LoginID, u.Name, la.Email,
        la.Login_Time, la.IsFailed,
        la.IP_Address, la.Device_Category,
        la.OS_Name, la.Browser_Name, la.Remember_Me
    FROM Login_Activity la
    LEFT JOIN User u ON u.UserID = la.UserID
    WHERE (p_UserID IS NULL OR la.UserID = p_UserID)
      AND (p_DateFrom IS NULL OR DATE(la.Login_Time) >= p_DateFrom)
      AND (p_DateTo   IS NULL OR DATE(la.Login_Time) <= p_DateTo)
    ORDER BY la.Login_Time DESC;
END$$
DROP PROCEDURE IF EXISTS sp_GetFallbackWorkoutPlan$$
CREATE PROCEDURE sp_GetFallbackWorkoutPlan(
    IN  p_Goal          ENUM('Weight Loss','Muscle Gain','Improve Endurance','General Health','Maintain Fitness'),
    IN  p_PlanType      ENUM('Home','Gym'),
    OUT p_PlanID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    -- Step 1: exact match on Goal AND Plan_Type
    SELECT WorkoutPlanID INTO p_PlanID
    FROM Workout_Plan
    WHERE Title LIKE '[TEMPLATE]%'
      AND Goal      = p_Goal
      AND Plan_Type = p_PlanType
    ORDER BY WorkoutPlanID
    LIMIT 1;

    IF p_PlanID IS NOT NULL THEN
        SET p_Status = 'FOUND';
    ELSE
        -- Step 2: relax — match on Goal only
        SELECT WorkoutPlanID INTO p_PlanID
        FROM Workout_Plan
        WHERE Title LIKE '[TEMPLATE]%'
          AND Goal = p_Goal
        ORDER BY WorkoutPlanID
        LIMIT 1;

        IF p_PlanID IS NOT NULL THEN
            SET p_Status = 'FOUND';
        ELSE
            SET p_PlanID = NULL;
            SET p_Status = 'NOT_FOUND';
        END IF;
    END IF;
END$$
DROP PROCEDURE IF EXISTS sp_GetFallbackWorkoutPlan$$
CREATE PROCEDURE sp_GetFallbackWorkoutPlan(
    IN  p_Goal          ENUM('Weight Loss','Muscle Gain','Improve Endurance','General Health','Maintain Fitness'),
    IN  p_PlanType      ENUM('Home','Gym'),
    OUT p_PlanID        INT UNSIGNED,
    OUT p_Status        VARCHAR(50)
)
BEGIN
    -- Step 1: exact match on Goal AND Plan_Type
    SELECT WorkoutPlanID INTO p_PlanID
    FROM Workout_Plan
    WHERE Title LIKE '[TEMPLATE]%'
      AND Goal      = p_Goal
      AND Plan_Type = p_PlanType
    ORDER BY WorkoutPlanID
    LIMIT 1;

    IF p_PlanID IS NOT NULL THEN
        SET p_Status = 'FOUND';
    ELSE
        -- Step 2: relax — match on Goal only
        SELECT WorkoutPlanID INTO p_PlanID
        FROM Workout_Plan
        WHERE Title LIKE '[TEMPLATE]%'
          AND Goal = p_Goal
        ORDER BY WorkoutPlanID
        LIMIT 1;

        IF p_PlanID IS NOT NULL THEN
            SET p_Status = 'FOUND';
        ELSE
            SET p_PlanID = NULL;
            SET p_Status = 'NOT_FOUND';
        END IF;
    END IF;
END$$
DROP PROCEDURE IF EXISTS sp_GetFallbackDietPlan$$
CREATE PROCEDURE sp_GetFallbackDietPlan(
    IN  p_PlanType          ENUM('Weight Loss','Muscle Gain','Maintenance'),
    IN  p_CulturalPref      ENUM('Pakistani/South Asian','Western','Mediterranean','Other'),
    OUT p_DietPlanID        INT UNSIGNED,
    OUT p_Status            VARCHAR(50)
)
BEGIN
    -- Step 1: exact match on Plan_Type AND Cultural_Preference
    SELECT DietPlanID INTO p_DietPlanID
    FROM Diet_Plan
    WHERE Title LIKE '[TEMPLATE]%'
      AND Plan_Type           = p_PlanType
      AND Cultural_Preference = p_CulturalPref
    ORDER BY DietPlanID
    LIMIT 1;

    IF p_DietPlanID IS NOT NULL THEN
        SET p_Status = 'FOUND';
    ELSE
        -- Step 2: relax — match on Plan_Type only
        SELECT DietPlanID INTO p_DietPlanID
        FROM Diet_Plan
        WHERE Title LIKE '[TEMPLATE]%'
          AND Plan_Type = p_PlanType
        ORDER BY DietPlanID
        LIMIT 1;

        IF p_DietPlanID IS NOT NULL THEN
            SET p_Status = 'FOUND';
        ELSE
            SET p_DietPlanID = NULL;
            SET p_Status = 'NOT_FOUND';
        END IF;
    END IF;
END$$

DELIMITER ;