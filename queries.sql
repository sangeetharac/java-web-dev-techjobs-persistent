## Part 1: Test it with SQL
SELECT COLUMN_NAME ,DATA_TYPE
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_SCHEMA = 'techjobs' AND TABLE_NAME = 'job';
## Part 2: Test it with SQL
  select TECHJOBS.EMPLOYER.name from techjobs.employer where location = "saint louis";

## Part 3: Test it with SQL
drop table techjobs.employer;
## Part 4: Test it with SQL

select distinct(techjobs.skill.name),
       techjobs.skill.description
from techjobs.skill left join techjobs.job_skills
  on techjobs.skill.id = techjobs.job_skills.sKills_id
where techjobs.job_skills.jobs_id is not null
order by techjobs.skill.name,
         techjobs.skill.description;
