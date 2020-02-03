## Part 1: Test it with SQL
SELECT COLUMN_NAME ,DATA_TYPE
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_SCHEMA = 'techjobs' AND TABLE_NAME = 'job';
## Part 2: Test it with SQL
select name from employer where location like "Saint Louis%"
## Part 3: Test it with SQL
drop table techjobs.employer
## Part 4: Test it with SQL

  select a.name, b.description
from techjobs.job a,
     techjobs.skill b,
     techjobs.job_skills c
where a.id = c.jobs_id
  and c.sKills_id = b.id
