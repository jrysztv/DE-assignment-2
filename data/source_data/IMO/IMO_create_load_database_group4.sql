/*
Data Engineering 1, Term Project 2
Group 4: Alexa Krasnokutskaia, Giorgi Machavariani, Istvan Jaray, Marton Nagy
Data for this script sourced from: https://github.com/rfordatascience/tidytuesday/tree/master/data/2024/2024-09-24
-----------------------
This script can be used to load the raw CSV files on the IMO into a MySQL schema.
Note, that for proper functioning, you need to adjust the paths to your locally appropriate ones.
To facilitate this, the script provides you with the exact path that may be copy-pasted into the appropriate part of the script.
Also, don't forget to have the files on your computer exactly there, where the script shows.
-----------------------
*/

-- create schema
drop schema if exists imo;
create schema if not exists imo
-- charset is set to this to allow for a wide range of characters from practically all languages
default character set utf8mb4
collate utf8mb4_unicode_ci;

-- use created database
use imo;

-- create the three tables in the database: timeline, country_results, and individual_results
drop table if exists timeline;
create table timeline(
	edition int,
    year int primary key not null,
    country varchar(255),
    city varchar(255),
    countries int,
    all_contestant int,
    male_contestant int,
    female_contestant int,
    start_date date,
    end_date date
) default character set = utf8mb4 collate = utf8mb4_unicode_ci;

drop table if exists country_results;
create table country_results(
	year int not null,
    country varchar(255) not null,
    team_size_all int,
    team_size_male int,
    team_size_female int,
    p1 int,
    p2 int,
    p3 int,
    p4 int,
    p5 int,
    p6 int,
    p7 int,
    awards_gold int,
    awards_silver int,
    awards_bronze int,
    awards_honorable_mentions int,
    leader varchar(255),
    deputy_leader varchar(255),
    primary key(year, country)
) default character set = utf8mb4 collate = utf8mb4_unicode_ci;

drop table if exists individual_results;
create table individual_results(
    id int auto_increment not null primary key,
    year int,
    contestant varchar(255),
    country varchar(255),
	p1 int,
    p2 int,
    p3 int,
    p4 int,
    p5 int,
    p6 int,
    p7 int,
    total int,
    individual_rank int,
    award varchar(255)
) default character set = utf8mb4 collate = utf8mb4_unicode_ci;

-- get locally appropriate paths
set @timeline_path = replace(concat(@@secure_file_priv, 'timeline_df.csv'), '\\', '/');
set @country_res_path = replace(concat(@@secure_file_priv, 'country_results_df.csv'), '\\', '/');
set @ind_res_path = replace(concat(@@secure_file_priv, 'individual_results_df.csv'), '\\', '/');

-- output the paths as select statements
select @timeline_path; -- paste this path into the first load data statement
select @country_res_path; -- paste this path into the second load data statement
select @ind_res_path; -- paste this path into the third load data statement

-- load the timeline file
load data infile 'D:/EGYETEM/CEU/DE/Uploads/timeline_df.csv'
into table timeline
fields terminated by ','
lines terminated by '\n'
ignore 1 lines
(edition, @year, @country, @city, @countries, @all_contestant, @male_contestant, @female_contestant, @start_date, @end_date)
set
	-- check for NA values and set them to null
	year = if(@year = 'NA', null, cast(@year as signed)),
    country = if(@country = 'NA', null, @country),
    city = if(@city = 'NA', null, @city),
    countries = if(@countries = 'NA', null, cast(@countries as signed)),
    all_contestant = if(@all_contestant = 'NA', null, cast(@all_contestant as signed)),
    male_contestant = if(@male_contestant = 'NA', null, cast(@male_contestant as signed)),
    female_contestant = if(@female_contestant = 'NA', null, cast(@female_contestant as signed)),
    -- parse dates accordingly
    start_date = if(@start_date = 'NA', null, str_to_date(@start_date, '%Y-%m-%d')),
    end_date = if(@end_date = 'NA', null, str_to_date(@end_date, '%Y-%m-%d'));
 
-- load the country results file
load data infile 'D:/EGYETEM/CEU/DE/Uploads/country_results_df.csv'
into table country_results
fields terminated by ','
lines terminated by '\n'
ignore 1 lines
(year, country, @team_size_all, @team_size_male, @team_size_female, @p1, @p2, @p3, @p4, @p5, @p6, @p7,
@awards_gold, @awards_silver, @awards_bronze, @awards_honorable_mentions, @leader, @deputy_leader)
set
	-- same logic for NAs as previously
    team_size_all = if(@team_size_all = 'NA', null, cast(@team_size_all as signed)),
    team_size_male = if(@team_size_male = 'NA', null, cast(@team_size_male as signed)),
    team_size_female = if(@team_size_female = 'NA', null, cast(@team_size_female as signed)),
    p1 = if(@p1 = 'NA', null, cast(@p1 as signed)),
	p2 = if(@p2 = 'NA', null, cast(@p2 as signed)),
    p3 = if(@p3 = 'NA', null, cast(@p3 as signed)),
    p4 = if(@p4 = 'NA', null, cast(@p4 as signed)),
    p5 = if(@p5 = 'NA', null, cast(@p5 as signed)),
    p6 = if(@p6 = 'NA', null, cast(@p6 as signed)),
    p7 = if(@p7 = 'NA', null, cast(@p7 as signed)),
    awards_gold = if(@awards_gold = 'NA', null, cast(@awards_gold as signed)),
    awards_silver = if(@awards_silver = 'NA', null, cast(@awards_silver as signed)),
    awards_bronze = if(@awards_bronze = 'NA', null, cast(@awards_bronze as signed)),
    awards_honorable_mentions = if(@awards_honorable_mentions = 'NA', null, cast(@awards_honorable_mentions as signed)),
    leader = if(@leader = 'NA', null, @leader),
    deputy_leader = if(@deputy_leader = 'NA', null, @deputy_leader);

-- load the individual results file
load data infile 'D:/EGYETEM/CEU/DE/Uploads/individual_results_df.csv'
into table individual_results
-- enclosed by " is needed as there were some contestant names containing commas that were enclosed by "
fields terminated by ','  optionally enclosed by '"'
lines terminated by '\n'
ignore 1 lines
(@year, @contestant, @country, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @total, @individual_rank, @award)
set
	id = null, -- setting to autoincrement id to null makes it step 1
    -- checking NAs by the same logic
	year = if(@year = 'NA', null, cast(@year as signed)),
    contestant = if(@contestant = 'NA', null, @contestant),
    country = if(@country = 'NA', null, @country),
	p1 = if(@p1 = 'NA', null, cast(@p1 as signed)),
	p2 = if(@p2 = 'NA', null, cast(@p2 as signed)),
    p3 = if(@p3 = 'NA', null, cast(@p3 as signed)),
    p4 = if(@p4 = 'NA', null, cast(@p4 as signed)),
    p5 = if(@p5 = 'NA', null, cast(@p5 as signed)),
    p6 = if(@p6 = 'NA', null, cast(@p6 as signed)),
    p7 = if(@p7 = 'NA', null, cast(@p7 as signed)),
    total = if(@total = 'NA', null, cast(@total as signed)),
    individual_rank = if(@individual_rank = 'NA', null, cast(@individual_rank as signed)),
    award = if(@award = 'NA', null, @award); -- note that only NAs are casted to null, as:
											-- NA means that we have no information on the award
                                            -- an empty string means that the contestant received no awards

-- add relationship between timeline and country_results
alter table country_results
add constraint `fk_edition`
foreign key (year)
references timeline(year)
on delete no action
on update no action;

-- add relationship between timeline and individual_results
alter table individual_results
add constraint `fk_ind_edition`
foreign key (year)
references timeline(year)
on delete no action
on update no action;

-- From 2022, Russia was banned from the IMO, Russian students were only allowed to compete as individuals and were assigned individual numbers as country codes.
-- So we need to replace country codes that look like 'CXX' with Russian Federation in individual results.
-- Then, calculate country level scores for the Russian Federation between 2022-2024 and add to country level data

alter table country_results add column notes varchar(1000);
alter table individual_results add column notes varchar(1000);

update individual_results as ir
join (select id, country from individual_results) as former on ir.id = former.id
set ir.notes = concat('Replaced original country ', former.country, ' to Russian Federation.')
where ir.country like 'C%' and length(ir.country) <= 3;

update individual_results
set country = 'Russian Federation'
where country like 'C%' and length(country) <= 3;

insert into country_results
select year, country, null, null, null, sum(p1), sum(p2), sum(p3), sum(p4), sum(p5), sum(p6), sum(p7),
sum(if(award = 'Gold medal', 1, 0)), sum(if(award = 'Silver medal', 1, 0)), sum(if(award = 'Bronze medal', 1, 0)),
sum(if(award = 'Honorable mention', 1, 0)), null, null,
"Aggregated after original countries have been replaced to account for Russia's disqualification as a country." as notes
from individual_results
where notes is not null
group by year, country;

-- After this small cleaning task, a foreign key can be properly added between individual and country results.
alter table individual_results
add constraint `fk_countries`
foreign key (year, country)
references country_results(year, country)
on delete no action
on update no action;
