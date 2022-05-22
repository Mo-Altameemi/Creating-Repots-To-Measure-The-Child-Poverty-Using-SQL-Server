----------------------------------
-- Creating Database for task 1 --
----------------------------------

use cw_task1

select * from [dbo].[ethiopia_constructed$]


SELECT
  *
FROM
  cw_task1.INFORMATION_SCHEMA.TABLES;
GO

----------------------------------------------------------------------------------
-- Creating all the tables by using T-SQL
----------------------------------------------------------------------------------------------------
-- Create the first table 'Ch_Location_Identification'

drop table Ch_Location_Identification
CREATE TABLE Ch_Location_Identification
(
ChildID nvarchar(50) NOT NULL,
round tinyint not NULL,
typesite tinyint NULL,
Childloc bit NULL,
Chethnic tinyint NULL,
Chldrel tinyint NULL,
dadlive tinyint NULL,
momlive tinyint NULL,
constraint PK_1 primary key clustered (childid asc, round asc));






-- Ethiopia
Insert into Ch_Location_Identification([ChildID],[round],[typesite],[Childloc],[Chethnic],[Chldrel],[dadlive],[momlive])
select cast (ChildID AS nvarchar(50)),
       cast (round AS tinyint),
	   cast (typesite AS tinyint),
       cast (Childloc AS bit),
	   cast (Chethnic  AS tinyint),
       cast (Chldrel AS tinyint),
	   cast (dadlive as tinyint),
       cast (momlive as tinyint)
From [dbo].[ethiopia_constructed$];



-- India
Insert into Ch_Location_Identification([ChildID],[round],[typesite],[Childloc],[Chethnic],[Chldrel],[dadlive],[momlive])
select cast (ChildID AS nvarchar(50)),
       cast (round AS tinyint),
	   cast (typesite AS tinyint),
       cast (Childloc AS bit),
	   cast (Chethnic  AS tinyint),
       cast (Chldrel AS tinyint),
	   cast (dadlive as tinyint),
       cast (momlive as tinyint)
From [dbo].[india_constructed$];





-- Peru
Insert into Ch_Location_Identification([ChildID],[round],[typesite],[Childloc],[Chethnic],[Chldrel],[dadlive],[momlive])
select cast (ChildID AS nvarchar(50)),
       cast (round AS tinyint),
	   cast (typesite AS tinyint),
       cast (Childloc AS bit),
	   cast (Chethnic  AS tinyint),
       cast (Chldrel AS tinyint),
	   cast (dadlive as tinyint),
       cast (momlive as tinyint)
From [dbo].[peru_constructed$];



-- Vietnam
Insert into Ch_Location_Identification([ChildID],[round],[typesite],[Childloc],[Chethnic],[Chldrel],[dadlive],[momlive])
select cast (ChildID AS nvarchar(50)),
       cast (round AS tinyint),
	   cast (typesite AS tinyint),
       cast (Childloc AS bit),
	   cast (Chethnic  AS tinyint),
       cast (Chldrel AS tinyint),
	   cast (dadlive as tinyint),
       cast (momlive as tinyint)
From [dbo].[vietnam_constructed$];

---------------------------------------
-- Create the second table 'Ch_Health'
---------------------------------------
drop table Ch_Health
CREATE TABLE Ch_Health
(
ChildID nvarchar(50) NOT NULL,
round tinyint not null,
chweight decimal (6,2) null,
chheight decimal (7,2) null,
bmi decimal (6,2),
zwfa decimal (20,2),
zhfa decimal (20,2),
zbfa bit null,
fwfa bit null,
fhfa bit null,
fbfa bit null,
underweight bit null,
stunting tinyint null,
thinness tinyint null,
Chmightdie bit null,
chillness tinyint null,
chinjury bit null,
chhprob bit null,
chhrel tinyint null,
chhealth tinyint null,
Cladder tinyint NULL,
constraint PK_2 primary key clustered (childid asc, round asc));


select * from Ch_Health


-- Ethiopia
Insert into Ch_Health([ChildID],[round],[chweight],[chheight],[bmi],[zwfa],
[zhfa],[zbfa],[fwfa],[fhfa],[fbfa],[underweight],[stunting],[thinness],[Chmightdie],[chillness],[chinjury],
[chhprob],[chhrel],[chhealth],[Cladder])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (chweight as decimal(6,2)),
       cast (chheight as decimal (7,2)),
       cast (bmi as decimal (6,2)),
       cast (zwfa as decimal (20,2)),
       cast (zhfa as decimal (20,2)),
       cast (zbfa as bit),
       cast (fwfa as bit),
       cast (fhfa as bit ),
       cast (fbfa as bit ),
       cast (underweight as bit),
       cast (stunting as tinyint),
       cast (thinness as tinyint),
	   cast (Chmightdie AS bit),
       cast (chillness as tinyint),
       cast (chinjury as bit),
       cast (chhprob as bit),
       cast (chhrel as tinyint),
       cast (chhealth as tinyint),
	   cast (Cladder as tinyint)
from [dbo].[ethiopia_constructed$]



-- India
Insert into Ch_Health([ChildID],[round],[chweight],[chheight],[bmi],[zwfa],
[zhfa],[zbfa],[fwfa],[fhfa],[fbfa],[underweight],[stunting],[thinness],[Chmightdie],[chillness],[chinjury],
[chhprob],[chhrel],[chhealth],[Cladder])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (chweight as decimal(6,2)),
       cast (chheight as decimal (7,2)),
       cast (bmi as decimal (6,2)),
       cast (zwfa as decimal (20,2)),
       cast (zhfa as decimal (20,2)),
       cast (zbfa as bit),
       cast (fwfa as bit),
       cast (fhfa as bit ),
       cast (fbfa as bit ),
       cast (underweight as bit),
       cast (stunting as tinyint),
       cast (thinness as tinyint),
	   cast (Chmightdie AS bit),
       cast (chillness as tinyint),
       cast (chinjury as bit),
       cast (chhprob as bit),
       cast (chhrel as tinyint),
       cast (chhealth as tinyint),
	   cast (Cladder as tinyint)
from [dbo].[india_constructed$]


-- Peru
Insert into Ch_Health([ChildID],[round],[chweight],[chheight],[bmi],[zwfa],
[zhfa],[zbfa],[fwfa],[fhfa],[fbfa],[underweight],[stunting],[thinness],[Chmightdie],[chillness],[chinjury],
[chhprob],[chhrel],[chhealth],[Cladder])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (chweight as decimal(6,2)),
       cast (chheight as decimal (7,2)),
       cast (bmi as decimal (6,2)),
       cast (zwfa as decimal (20,2)),
       cast (zhfa as decimal (20,2)),
       cast (zbfa as bit),
       cast (fwfa as bit),
       cast (fhfa as bit ),
       cast (fbfa as bit ),
       cast (underweight as bit),
       cast (stunting as tinyint),
       cast (thinness as tinyint),
	   cast (Chmightdie AS bit),
       cast (chillness as tinyint),
       cast (chinjury as bit),
       cast (chhprob as bit),
       cast (chhrel as tinyint),
       cast (chhealth as tinyint),
	   cast (Cladder as tinyint)
from [dbo].[peru_constructed$]


-- Vietnam

Insert into Ch_Health([ChildID],[round],[chweight],[chheight],[bmi],[zwfa],
[zhfa],[zbfa],[fwfa],[fhfa],[fbfa],[underweight],[stunting],[thinness],[Chmightdie],[chillness],[chinjury],
[chhprob],[chhrel],[chhealth],[Cladder])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (chweight as decimal(6,2)),
       cast (chheight as decimal (7,2)),
       cast (bmi as decimal (6,2)),
       cast (zwfa as decimal (20,2)),
       cast (zhfa as decimal (20,2)),
       cast (zbfa as bit),
       cast (fwfa as bit),
       cast (fhfa as bit ),
       cast (fbfa as bit ),
       cast (underweight as bit),
       cast (stunting as tinyint),
       cast (thinness as tinyint),
	   cast (Chmightdie AS bit),
       cast (chillness as tinyint),
       cast (chinjury as bit),
       cast (chhprob as bit),
       cast (chhrel as tinyint),
       cast (chhealth as tinyint),
	   cast (Cladder as tinyint)
from [dbo].[vietnam_constructed$]


--------------------------------------------------------------------------------------------
-- Creating the 3rd table 'Time_Use'
drop table Ch_Time_Use
CREATE TABLE Ch_Time_Use
(
ChildID nvarchar(50) NOT NULL,
round tinyint not null,
hschool tinyint null,
hcare tinyint null,
hchore tinyint null,
htask tinyint null,
hwork tinyint null,
hplay tinyint null,
hsleep tinyint null,
hstudy tinyint null,
constraint PK_3 primary key clustered (childid asc, round asc));


-- Ethiopia
Insert into Ch_Time_Use([ChildID],[round],[hschool],[hcare],[hchore],[htask],
[hwork],[hstudy],[hplay],[hsleep])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hschool as tinyint),
       cast (hcare as tinyint),
       cast (hchore as tinyint),
       cast (htask as tinyint),
       cast (hwork as tinyint),
       cast (hplay as tinyint),
       cast (hsleep as tinyint),
       cast (hstudy as tinyint)
from [dbo].[ethiopia_constructed$]


-- India
Insert into Ch_Time_Use([ChildID],[round],[hschool],[hcare],[hchore],[htask],
[hwork],[hstudy],[hplay],[hsleep])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hschool as tinyint),
       cast (hcare as tinyint),
       cast (hchore as tinyint),
       cast (htask as tinyint),
       cast (hwork as tinyint),
       cast (hplay as tinyint),
       cast (hsleep as tinyint),
       cast (hstudy as tinyint)
from [dbo].[india_constructed$]


-- Peru
Insert into Ch_Time_Use([ChildID],[round],[hschool],[hcare],[hchore],[htask],
[hwork],[hstudy],[hplay],[hsleep])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hschool as tinyint),
       cast (hcare as tinyint),
       cast (hchore as tinyint),
       cast (htask as tinyint),
       cast (hwork as tinyint),
       cast (hplay as tinyint),
       cast (hsleep as tinyint),
       cast (hstudy as tinyint)
from [dbo].[peru_constructed$]


-- Vietnam
Insert into Ch_Time_Use([ChildID],[round],[hschool],[hcare],[hchore],[htask],
[hwork],[hstudy],[hplay],[hsleep])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hschool as tinyint),
       cast (hcare as tinyint),
       cast (hchore as tinyint),
       cast (htask as tinyint),
       cast (hwork as tinyint),
       cast (hplay as tinyint),
       cast (hsleep as tinyint),
       cast (hstudy as tinyint)
from [dbo].[vietnam_constructed$]


select * from Ch_Time_Use


-----------------------------------------
-- Creating the 4th table 'Ch_Education'.
-----------------------------------------
drop table Ch_Education
CREATE TABLE Ch_Education
(
ChildID nvarchar(50) NOT NULL,
round tinyint not null,
preprim bit null,
agegr1 tinyint null,
enrol bit null,
engrade tinyint null,
Hghgrade tinyint null,
dadedu tinyint null,
momedu tinyint null,
carecantread bit null,
caredu tinyint null,
constraint PK_4 primary key clustered (childid asc, round asc));

-- Ethiopia
Insert into Ch_Education([ChildID],[round],[preprim],[agegr1],[enrol],[engrade],
[Hghgrade],[dadedu],[momedu],[carecantread],[caredu])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (preprim as bit),
       cast (agegr1 as tinyint),
       cast (enrol as bit),
       cast (engrade as tinyint),
	   cast (Hghgrade AS tinyint),
	   cast (dadedu AS tinyint),
	   cast (momedu as tinyint),
       cast (carecantread AS bit),
       cast (caredu AS tinyint)
from [dbo].[ethiopia_constructed$]


-- India
Insert into Ch_Education([ChildID],[round],[preprim],[agegr1],[enrol],[engrade],
[Hghgrade],[dadedu],[momedu],[carecantread],[caredu])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (preprim as bit),
       cast (agegr1 as tinyint),
       cast (enrol as bit),
       cast (engrade as tinyint),
	   cast (Hghgrade AS tinyint),
	   cast (dadedu AS tinyint),
	   cast (momedu as tinyint),
       cast (carecantread AS bit),
       cast (caredu AS tinyint)
from [dbo].[india_constructed$]



-- Peru
Insert into Ch_Education([ChildID],[round],[preprim],[agegr1],[enrol],[engrade],
[dadedu],[momedu],[carecantread],[caredu])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (preprim as bit),
       cast (agegr1 as tinyint),
       cast (enrol as bit),
       cast (engrade as tinyint),
	   cast (dadedu AS tinyint),
	   cast (momedu as tinyint),
       cast (carecantread AS bit),
       cast (caredu AS tinyint)
from [dbo].[peru_constructed$]



-- Vietnam
Insert into Ch_Education([ChildID],[round],[preprim],[agegr1],[enrol],[engrade],
[Hghgrade],[dadedu],[momedu],[carecantread],[caredu])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (preprim as bit),
       cast (agegr1 as tinyint),
       cast (enrol as bit),
       cast (engrade as tinyint),
	   cast (Hghgrade AS tinyint),
	   cast (dadedu AS tinyint),
	   cast (momedu as tinyint),
       cast (carecantread AS bit),
       cast (caredu AS tinyint)
from [dbo].[vietnam_constructed$]

select * from Ch_Education

----------------------------------------
-- Creating the 5th Table 'Ch_Household'
drop table Ch_Household
CREATE TABLE Ch_Household
(
ChildID nvarchar(50) NOT NULL,
round tinyint not null,
hhsize tinyint null,
male05 bit null,
male612 tinyint null,
male1317 tinyint null,
male1860 tinyint null,
male61 tinyint null,
female05 bit null,
female612 tinyint null,
female1317 tinyint null,
female1860 tinyint null,
female61 tinyint null,
carerel tinyint null,
headrel tinyint null,
constraint PK_5 primary key clustered (childid asc, round asc));



-- Ethiopia

Insert into Ch_Household([ChildID],[round],[hhsize],[male05],[male612],[male1317],
[male1860],[male61],[female05],[female612],[female1317],[female1860],[female61],
[carerel],[headrel])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hhsize as tinyint),
       cast (male05 as bit),
       cast (male612 as tinyint),
       cast (male1317 as tinyint),
       cast (male1860 as tinyint),
       cast (male61 as tinyint),
       cast (female05 as bit),
       cast (female612 as tinyint),
       cast (female1317 as tinyint),
       cast (female1860 as tinyint),
       cast (female61 as tinyint),
	   cast (carerel as tinyint),
       cast (headrel as tinyint)
from [dbo].[ethiopia_constructed$]

-- India
Insert into Ch_Household([ChildID],[round],[hhsize],[male05],[male612],[male1317],
[male1860],[male61],[female05],[female612],[female1317],[female1860],[female61],
[carerel],[headrel])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hhsize as tinyint),
       cast (male05 as bit),
       cast (male612 as tinyint),
       cast (male1317 as tinyint),
       cast (male1860 as tinyint),
       cast (male61 as tinyint),
       cast (female05 as bit),
       cast (female612 as tinyint),
       cast (female1317 as tinyint),
       cast (female1860 as tinyint),
       cast (female61 as tinyint),
	   cast (carerel as tinyint),
       cast (headrel as tinyint)
from [dbo].[india_constructed$]


-- Peru
Insert into Ch_Household([ChildID],[round],[hhsize],[male05],[male612],[male1317],
[male1860],[male61],[female05],[female612],[female1317],[female1860],[female61],
[carerel],[headrel])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hhsize as tinyint),
       cast (male05 as bit),
       cast (male612 as tinyint),
       cast (male1317 as tinyint),
       cast (male1860 as tinyint),
       cast (male61 as tinyint),
       cast (female05 as bit),
       cast (female612 as tinyint),
       cast (female1317 as tinyint),
       cast (female1860 as tinyint),
       cast (female61 as tinyint),
	   cast (carerel as tinyint),
       cast (headrel as tinyint)
from [dbo].[peru_constructed$]


-- Vietnam
Insert into Ch_Household([ChildID],[round],[hhsize],[male05],[male612],[male1317],
[male1860],[male61],[female05],[female612],[female1317],[female1860],[female61],
[carerel],[headrel])
select cast (ChildID as nvarchar(50)),
       cast (round as tinyint),
       cast (hhsize as tinyint),
       cast (male05 as bit),
       cast (male612 as tinyint),
       cast (male1317 as tinyint),
       cast (male1860 as tinyint),
       cast (male61 as tinyint),
       cast (female05 as bit),
       cast (female612 as tinyint),
       cast (female1317 as tinyint),
       cast (female1860 as tinyint),
       cast (female61 as tinyint),
	   cast (carerel as tinyint),
       cast (headrel as tinyint)
from [dbo].[vietnam_constructed$]



select * from Ch_Household

---------------------------------------
-- Create First bridge table(Ch_Gender_Age)
----------------------------------------
drop table Ch_Gender_Age
CREATE TABLE Ch_Gender_Age
(
ChildID nvarchar(50) NOT NULL,
round tinyint not null,
chsex tinyint NULL,
agemon smallint NULL,
dadage tinyint null,
momage tinyint null,
careage tinyint null,
caresex tinyint null,
headage tinyint null,
headsex tinyint null,
yc bit NULL);

ALTER TABLE Ch_Gender_Age
ADD CONSTRAINT FK_1 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_health (childid,round);

ALTER TABLE Ch_Gender_Age
ADD CONSTRAINT FK_12 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_education (childid,round)

ALTER TABLE Ch_Gender_Age
ADD CONSTRAINT FK_3 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_location_Identification (childid,round);

--Ethiopia

Insert into [Ch_Gender_Age]([ChildID],[round],[chsex],[agemon],[dadage],[momage],[careage],
[caresex],[headage],[headsex],[yc])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast ([chsex] as tinyint),
	   cast ([agemon] as smallint),
	   cast (dadage as tinyint),
       cast (momage as tinyint),
       cast (careage as tinyint),
       cast (caresex as tinyint),
       cast (headage as tinyint),
       cast (headsex as tinyint),
       cast ([yc] as bit)
from [dbo].[ethiopia_constructed$]

-- India
Insert into [Ch_Gender_Age]([ChildID],[round],[chsex],[agemon],[dadage],[momage],[careage],
[caresex],[headage],[headsex],[yc])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast ([chsex] as tinyint),
	   cast ([agemon] as smallint),
	   cast (dadage as tinyint),
       cast (momage as tinyint),
       cast (careage as tinyint),
       cast (caresex as tinyint),
       cast (headage as tinyint),
       cast (headsex as tinyint),
       cast ([yc] as bit)
	  from [dbo].[india_constructed$]

-- Peru

Insert into [Ch_Gender_Age]([ChildID],[round],[chsex],[agemon],[dadage],[momage],[careage],
[caresex],[headage],[headsex],[yc])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast ([chsex] as tinyint),
	   cast ([agemon] as smallint),
	   cast (dadage as tinyint),
       cast (momage as tinyint),
       cast (careage as tinyint),
       cast (caresex as tinyint),
       cast (headage as tinyint),
       cast (headsex as tinyint),
       cast ([yc] as bit)
	  from [dbo].[peru_constructed$]

-- Vietnam	

Insert into [Ch_Gender_Age]([ChildID],[round],[chsex],[agemon],[dadage],[momage],[careage],
[caresex],[headage],[headsex],[yc])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast ([chsex] as tinyint),
	   cast ([agemon] as smallint),
	   cast (dadage as tinyint),
       cast (momage as tinyint),
       cast (careage as tinyint),
       cast (caresex as tinyint),
       cast (headage as tinyint),
       cast (headsex as tinyint),
       cast ([yc] as bit)
	  from [dbo].[vietnam_constructed$]

select * from Ch_Gender_Age

-- Create 2nd  Bridge Table 'School_Type'
drop table School_Type
CREATE TABLE School_Type
(
ChildID nvarchar(50) NOT NULL,
round tinyint not null,
entype tinyint null,
timesch int null);
ALTER TABLE School_Type
ADD CONSTRAINT FK_4 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_Education (childid,round)
ALTER TABLE School_Type
ADD CONSTRAINT FK_5 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_Time_Use (childid,round);

--Ethiopia
Insert into [School_Type]([ChildID],[round],[entype],[timesch])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (entype as tinyint),
	   cast (timesch as int)
From [dbo].[ethiopia_constructed$];

-- India
Insert into [School_Type]([ChildID],[round],[entype],[timesch])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (entype as tinyint),
	   cast (timesch as int)
From [dbo].[india_constructed$];

-- Peru

Insert into [School_Type]([ChildID],[round],[entype],[timesch])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (entype as tinyint),
	   cast (timesch as int)
From [dbo].[peru_constructed$];

--Vietnam

Insert into [School_Type]([ChildID],[round],[entype],[timesch])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (entype as tinyint),
	   cast (timesch as int)
From [dbo].[vietnam_constructed$];
-----------------------------------------------------------------
-- create 3rd bridge table 'ch_livestock'
drop table ch_livestock
CREATE TABLE ch_livestock
(
ChildID nvarchar(50) NOT NULL,
round tinyint not null,
ownhouse bit null,
drwaterq bit null,
toiletq bit null,
elecq bit null,
cookingq bit null,
foodsec tinyint null,
wi decimal (6,2)  null,
hq decimal (6,2) null,
sv decimal (6,2) null,
cd decimal (6,2) null,
shecon5 bit null,
shfam9 bit null)

ALTER TABLE Ch_livestock
ADD CONSTRAINT FK_6 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_Household(childid,round)
ALTER TABLE Ch_livestock
ADD CONSTRAINT FK_7 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_Health(childid,round)
ALTER TABLE Ch_livestock
ADD CONSTRAINT FK_8 FOREIGN KEY (childid,round)
REFERENCES dbo.Ch_Location_Identification(childid,round);

-- Ethiopia
Insert into [Ch_livestock]([ChildID],[round],[Ownhouse],[drwaterq],[toiletq],[elecq],[cookingq],
[foodsec],[wi],[hq],[sv],[cd],[shecon5],[shfam9])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (ownhouse as bit),
       cast (drwaterq as bit),
       cast (toiletq as bit),
       cast (elecq as bit),
       cast (cookingq as bit),
	   cast (foodsec as tinyint),
	   cast (wi as decimal (6,2)),
       cast (hq as decimal (6,2)),
       cast (sv as decimal (6,2)),
       cast (cd as decimal (6,2)),
	   cast (shecon5 as bit),
	   cast (shfam9 as bit)
From [dbo].[ethiopia_constructed$];

-- India
Insert into [Ch_livestock]([ChildID],[round],[Ownhouse],[drwaterq],[toiletq],[elecq],[cookingq],
[foodsec],[wi],[hq],[sv],[cd],[shecon5],[shfam9])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (ownhouse as bit),
       cast (drwaterq as bit),
       cast (toiletq as bit),
       cast (elecq as bit),
       cast (cookingq as bit),
	   cast (foodsec as tinyint),
	   cast (wi as decimal (6,2)),
       cast (hq as decimal (6,2)),
       cast (sv as decimal (6,2)),
       cast (cd as decimal (6,2)),
	   cast (shecon5 as bit),
	   cast (shfam9 as bit)
From [dbo].[india_constructed$];

--Peru
Insert into [Ch_livestock]([ChildID],[round],[Ownhouse],[drwaterq],[toiletq],[elecq],[cookingq],
[foodsec],[wi],[hq],[sv],[cd],[shecon5],[shfam9])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (ownhouse as bit),
       cast (drwaterq as bit),
       cast (toiletq as bit),
       cast (elecq as bit),
       cast (cookingq as bit),
	   cast (foodsec as tinyint),
	   cast (wi as decimal (6,2)),
       cast (hq as decimal (6,2)),
       cast (sv as decimal (6,2)),
       cast (cd as decimal (6,2)),
	   cast (shecon5 as bit),
	   cast (shfam9 as bit)
From [dbo].[peru_constructed$];

--Vietnam
Insert into [Ch_livestock]([ChildID],[round],[Ownhouse],[drwaterq],[toiletq],[elecq],[cookingq],
[foodsec],[wi],[hq],[sv],[cd],[shecon5],[shfam9])
select cast([ChildID] as nvarchar(50)),
       cast (round as tinyint),
	   cast (ownhouse as bit),
       cast (drwaterq as bit),
       cast (toiletq as bit),
       cast (elecq as bit),
       cast (cookingq as bit),
	   cast (foodsec as tinyint),
	   cast (wi as decimal (6,2)),
       cast (hq as decimal (6,2)),
       cast (sv as decimal (6,2)),
       cast (cd as decimal (6,2)),
	   cast (shecon5 as bit),
	   cast (shfam9 as bit)
From [dbo].[vietnam_constructed$];


select * from ch_livestock

--------------------------------------------------------
-- Now we will revirew our tables

select * from Ch_Education
select * from Ch_Health
select * from Ch_Household
select * from Ch_Time_Use


select * from Ch_Education
select * from Ch_Health
select * from Ch_Household
select * from Ch_Gender_Age
select * from Ch_caregiver
select * from Ch_Time_Use
select * from ch_livestock



------------------------------------------------------------------------------------------------
-------------------------------
-- report -1 --
--------------------------------
drop view weight_status
create view Weight_Status as
select a.ChildID,a.Round,a.wi as Wealth_Index,
IIF(a.drwaterq='0','NO',IIF(a.drwaterq='1', 'yes','unknown')) as Using_healthy_water,
IIF (a.toiletq='0','no', IIF(a.toiletq='1','yes','unknown')) as Access_to_clean_toilet,
IIF(a.elecq='0','no',IIF(a.elecq='1','yes','unknown')) as Access_to_electricity,
case b.chhrel when 1 then 'same' when 2 then 'better' when 3 then 'worse' else 'unknowm' end as Child_health_compared_to_peers,
case b.underweight when 0 then 'not_underweight' when 1 then  'moderately_underweight' when 2 then 'severely underweight'
else 'unknown' end as Weight_Range,
case c.chsex when 1 then 'male' when 2 then 'female' else 'unknown' end Gender,
c.agemon as Age
from ch_livestock a inner join
Ch_Health b on a.childid=b.ChildID and a.round=b.round inner join Ch_Gender_Age c on c.ChildID=b.ChildID and c.round=b.round
Where b.chhrel =3;

select * 
from Weight_Status 
Where wealth_index IS NOT NULL
and wealth_index <=0.05
Order by Weight_Range


------------------------------------------------------
-- Creating a stored procedure for the Round column --
------------------------------------------------------
drop procedure index_finder
create procedure index_finder  
@round as tinyint,
@agemon as smallint
as
select a.ChildID,a.Round,a.wi as Wealth_Index,
IIF(a.drwaterq='0','NO',IIF(a.drwaterq='1', 'yes','unknown')) as Using_healthy_water,
IIF (a.toiletq='0','no', IIF(a.toiletq='1','yes','unknown')) as Access_to_clean_toilet,
IIF(a.elecq='0','no',IIF(a.elecq='1','yes','unknown')) as Access_to_electricity,
case b.chhrel when 1 then 'same' when 2 then 'better' when 3 then 'worse' else 'unknowm' end as Child_health_compared_to_peers,
case b.underweight when 0 then 'not_underweight' when 1 then  'moderately_underweight' when 2 then 'severely underweight'
else 'unknown' end as Weight_Range,
case c.chsex when 1 then 'male' when 2 then 'female' else 'unknown' end Gender,
c.agemon as Age
from ch_livestock a inner join
Ch_Health b on a.childid=b.ChildID and a.round=b.round inner join Ch_Gender_Age c on c.ChildID=b.ChildID and c.round=b.round
Where a.round=@round
and c.agemon=@agemon
and b.chhrel =3;
	  
exec index_finder  @round = 3 , @agemon=90
--------------------------------------------------------------------------------------------------------------------
-- report - 2 --
-----------------
-- we are going to create view parents to use it in next t-sql statment
drop view parents 
create view parents as
select childID,round,case dadedu when '0' then 'None' when '1' then 'Grade 1'
when '2' then 'Grade 2' when '3' then 'Grade 3' when '4' then 'Grade 4' 
when '5' then 'Grade 5' when '6' then 'Grade 6' when '7' then 'Grade 7'
when '8' then 'Grade 8' when '9' then 'Grade 9' when '10' then 'Grade 10'
when '11' then 'Grade 11' when '12' then 'Grade 12' when '13' then 'Vocational,technical college'
when '14' then 'University' when '15' then 'Masters, doctorate' when '28' then 'Adult literacy'
when '29' then 'Religious education' when '30' then 'Other' else 'unknown'end as dad_education,
case momedu when '0' then 'None' when '1' then 'Grade 1'
when '2' then 'Grade 2' when '3' then 'Grade 3' when '4' then 'Grade 4' 
when '5' then 'Grade 5' when '6' then 'Grade 6' when '7' then 'Grade 7'
when '8' then 'Grade 8' when '9' then 'Grade 9' when '10' then 'Grade 10'
when '11' then 'Grade 11' when '12' then 'Grade 12' when '13' then 'Vocational,technical college'
when '14' then 'University' when '15' then 'Masters, doctorate' when '28' then 'Adult literacy'
when '29' then 'Religious education' when '30' then 'Other' else 'unknown'end as mom_education
from ch_education 
where dadedu<=1 and momedu<=1

-- Now we are going to find the realtionship between the parents and child education as a causes of poverty.  

select T.ChildID,T.round,case a.enrol when '0' then 'no'
when '1' then 'yes' when '99' then 'missing' when '77' then 'nk' 
when '88' then 'n/a' end as child_currently_enrolled,
t.hwork as daily_paid_work_per_hour,p.dad_education,p.mom_education
from ch_time_use T
INNER Join dbo.parents p
on t.ChildID=p.ChildID And t.round= p.round
inner join Ch_Education  A  on a.ChildID=t.ChildID And a.round= t.round
group by T.ChildID,T.round,a.enrol,p.dad_education,p.mom_education,t.hwork
having t.hwork>10

-----------------
---report 3 ---
------------------
drop view child_enrolment
create view Child_Enrolment as
select  a.childid,a.round,
IIF (a.typesite='1','urban', IIF (a.typesite='2','rural','Unknown')) as Area_of_residence,
IIF (a.childloc ='0','NO',IIF(a.childloc ='1','YES','Unknown')) as child_currently_lives_in_household,
b.zwfa as Weight_for_age_z_score,
b.zhfa as Height_for_age_z_score,
case c.engrade when '0' then 'None' when '1' then 'Grade 1'
when '2' then 'Grade 2' when '3' then 'Grade 3' when '4' then 'Grade 4' 
when '5' then 'Grade 5' when '6' then 'Grade 6' when '7' then 'Grade 7'
when '8' then 'Grade 8' when '9' then 'Grade 9' when '10' then 'Grade 10'
when '11' then 'Grade 11' when '12' then 'Grade 12' when '13' then 'Post-secondary/technological institute'
when '14' then 'Vocational' when '15' then 'University degree(graduate)' when '16' then 'University degree(postgraduate)'
when '100' then 'Pre-primary' when '28' then 'Adult literacy' when '29' then'Religious education'
when '77' then 'NK'else 'unknown'end as child_current_enrolled_in,
IIF (b.chhprob='0','no',IIF (b.chhprob='1','yes','unknown')) as child_has_longterm_problem
from ch_location_identification a
inner join ch_health b
on a.childid= b.childid and a.round=b.round
inner join ch_education c
on b.childid= c.childid and b.round=c.round
where b.chhprob=1 and c.engrade is not null
Group by a.childid,a.round,a.typesite,a.childloc,b.zwfa,b.zhfa,b.zbfa,c.engrade,b.chhprob
having b.zwfa<-2


select * from Child_Enrolment
order by child_has_longterm_problem

--
drop procedure ChildID_finder 
create procedure ChildID_finder  
@childid as nvarchar(50)
as
select  a.childid,a.round,
IIF (a.typesite='1','urban', IIF (a.typesite='2','rural','Unknown')) as Area_of_residence,
IIF (a.childloc ='0','NO',IIF(a.childloc ='1','YES','Unknown')) as child_currently_lives_in_household,
b.zwfa as Weight_for_age_z_score,
b.zhfa as Height_for_age_z_score,
case c.engrade when '0' then 'None' when '1' then 'Grade 1'
when '2' then 'Grade 2' when '3' then 'Grade 3' when '4' then 'Grade 4' 
when '5' then 'Grade 5' when '6' then 'Grade 6' when '7' then 'Grade 7'
when '8' then 'Grade 8' when '9' then 'Grade 9' when '10' then 'Grade 10'
when '11' then 'Grade 11' when '12' then 'Grade 12' when '13' then 'Post-secondary/technological institute'
when '14' then 'Vocational' when '15' then 'University degree(graduate)' when '16' then 'University degree(postgraduate)'
when '100' then 'Pre-primary' when '28' then 'Adult literacy' when '29' then'Religious education'
when '77' then 'NK'else 'unknown'end as child_current_enrolled_in,
IIF (b.chhprob='0','no',IIF (b.chhprob='1','yes','unknown')) as child_has_longterm_problem
from ch_location_identification a
inner join ch_health b
on a.childid= b.childid and a.round=b.round
inner join ch_education c
on b.childid= c.childid and b.round=c.round
where a.childid= @childid
AND b.chhprob=1 and c.engrade is not null
Group by a.childid,a.round,a.typesite,a.childloc,b.zwfa,b.zhfa,b.zbfa,c.engrade,b.chhprob
Having b.zwfa<-2
Order by  c.engrade
	  
exec childid_finder @childid = et010043
-----------
--report 4
--------------

select a.childid,a.hcare as Hours_for_care_house_member,
IIF (b.Chsex='1','Male',IIF (b.Chsex='2','Female','unknown')) AS Gender,cast(b.agemon as int)/12 as Age_by_years,
a.hwork as Hours_paid_work,
a.htask as hours_for_domestic_jobs,
a.Hstudy as study_hours,
Round(L.hq,1) AS Housing_quality_index,
Round(L.cd,1) AS Consumer_durables_index
From Ch_Time_use a
inner join ch_livestock L
on a.childid=L.childid And a.round=L.round
inner join ch_gender_age b
on b.childid=L.childid And b.round=L.round
where L.hq<0.5 and hcare is not null and agemon > 120
order by hstudy

drop procedure hours_work_finder 
create procedure hours_work_finder  
@hwork as tinyint
as
select a.childid,a.hcare as Hours_for_care_house_member,
IIF (b.Chsex='1','Male',IIF (b.Chsex='2','Female','unknown')) AS Gender,cast(b.agemon as int)/12 as Age_by_years,
a.hwork as Hours_paid_work,
a.htask as hours_for_domestic_jobs,
a.Hstudy as study_hours,
Round(L.hq,1) AS Housing_quality_index,
Round(L.cd,1) AS Consumer_durables_index
From Ch_Time_use a
inner join ch_livestock L
on a.childid=L.childid And a.round=L.round
inner join ch_gender_age b
on b.childid=L.childid And b.round=L.round
where a.hwork=@hwork
and L.hq<0.5 and hcare is not null and agemon > 120
order by hstudy

exec hours_work_finder @hwork = 15
--------------------------------------------------------------------------------------------
-- Report -- 5 --
--------------------------------------
-- We are going to find what is the factors behind that child might die in rural areas
select b.childid,b.round,
IIF (b.chmightdie='0','no' ,IIF (b.chmightdie='1','yes','unknown')) as Child_might_die,
case c.foodsec when 1 then'we_always_eat_enough_of_what_we_want' 
when 2 then 'we_eat_enough_but_not_always_what_we_would_like'
when 3 then 'we_sometimes_do_not_eat_enough' 
when 4 then 'we_frequently_do_not_eat_enough' else 'unknown' end Food_Situation,
IIF(b.chinjury='0','no',IIF(b.chinjury='1','yes','unknown')) as child_has_serious_injury,
IIF(b.chillness='0','no',IIF(b.chillness='1','yes','unknown')) as child_has_serious_illness,
IIF (a.typesite='0','urban',IIF(a.typesite='2','rural','unknown')) as Area_Of_Residence
from ch_health b
inner join ch_livestock c 
on b.ChildID=c.ChildID and b.round=c.round 
inner join Ch_Location_Identification a 
on a.ChildID=b.ChildID and a.round=b.round
where Chmightdie = 1 
and a.typesite=2
and c.foodsec IS NOT NULL
order by foodsec desc
-----------------------------------------------------------------------------------------------
	