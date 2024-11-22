# World Bank Data Description

## Dataset Overview

**Dataset:** World Bank Education Statistics - All Indicators

**Description:** This dataset encompasses a comprehensive collection of global education-related indicators sourced from the World Bank. It includes data on enrollment, expenditure, literacy rates, teacher counts, and various educational outcomes across multiple countries. The data is intended for analysis of educational trends, policy evaluation, and comparisons across regions or income groups.

**API request:** https://api.worldbank.org/v2/country/all/indicator/NY.GDP.PCAP.PP.CD;SP.POP.TOTL;BAR.TER.CMPT.15UP.ZS;PER.ALL.TTL.GOV;SE.ADT.LITR.ZS;BAR.SEC.CMPT.15UP.ZS;BAR.PRM.CMPT.15UP.ZS;LO.PIAAC.NUM.YOU.45;LO.PIAAC.TEC.3;LO.PIAAC.NUM.5;LO.PIAAC.NUM.4;SE.TER.GRAD.SC.ZS?date=1959:2022&source=12&format=json

**Timeframe:** all available data for the period from 1960 to 2022

**Data Characteristics:** the number of observations, missing values and data availability by country or time period varies greatly depending on the indicatior. Refer to the description of the indicator for detailed information.

## Indicators

* NY.GDP.PCAP.PP.CD

GDP per capita, PPP (current international $)

Description: GDP per capita based on purchasing power parity (PPP). PPP GDP is gross domestic product converted to international dollars using purchasing power parity rates. An international dollar has the same purchasing power over GDP as the U.S. dollar has in the United States. GDP at purchaser's prices is the sum of gross value added by all resident producers in the economy plus any product taxes and minus any subsidies not included in the value of the products. It is calculated without making deductions for depreciation of fabricated assets or for depletion and degradation of natural resources. Data are in current international dollars based on the 2011 ICP round.

Source: World Bank, International Comparison Program database

Number of observations: 212 countries

Timeframe: 1990-2018

* SP.POP.TOTL

Population, total

Description: Total population is based on the de facto definition of population, which counts all residents regardless of legal status or citizenship. The values shown are midyear estimates.

Source: (1) United Nations Population Division. World Population Prospects: 2019 Revision. (2) Census reports and other statistical publications from national statistical offices, (3) Eurostat: Demographic Statistics, (4) United Nations Statistical Division. Population and Vital Statistics Reprot (various years), (5) U.S. Census Bureau: International Database, and (6) Secretariat of the Pacific Community: Statistics and Demography Programme.

Number of observations: 231 countries

Timeframe: 1970-2019

* BAR.TER.CMPT.15UP.ZS

Barro-Lee: Percentage of population age 15+ with tertiary schooling. Completed Tertiary

Description: Percentage of population age 15+ with tertiary schooling. Completed Tertiary

Source: Robert J. Barro and Jong-Wha Lee, www.barrolee.com

Number of observations: 144 countries

Timeframe: every five years 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010

* BAR.SEC.CMPT.15UP.ZS

Barro-Lee: Percentage of population age 15+ with secondary schooling. Completed Secondary

Description: Percentage of population age 15+ with secondary schooling. Completed Secondary

Source: Robert J. Barro and Jong-Wha Lee, www.barrolee.com

Number of observations: 144 countries

Timeframe: every five years 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010

* BAR.PRM.CMPT.15UP.ZS

Barro-Lee: Percentage of population age 15+ with primary schooling. Completed Primary

Description: Percentage of population age 15+ with primary schooling. Completed Primary

Source: Robert J. Barro and Jong-Wha Lee, www.barrolee.com

Number of observations: 144 countries

Timeframe: every five years 1960, 1965, 1970, 1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010

* SE.ADT.LITR.ZS

Adult literacy rate, population 15+ years, both sexes (%)

Description: Percentage of the population age 15 and above who can, with understanding, read and write a short, simple statement on their everyday life. Generally, ‘literacy’ also encompasses ‘numeracy’, the ability to make simple arithmetic calculations. This indicator is calculated by dividing the number of literates aged 15 years and over by the corresponding age group population and multiplying the result by 100.

Source: UNESCO Institute for Statistics

Number of observations: highly varies across years

Timeframe: 1970-2019

* SE.TER.GRAD.SC.ZS

Percentage of graduates from tertiary education graduating from Natural Sciences, Mathematics and Statistics programmes, both sexes (%)

Description: Share of all tertiary graduates who completed Natural Sciences, Mathematics and Statistics programmes in the reference year.

Source: UNESCO Institute for Statistics

Number of observations: highly varies across years

Timeframe: 1999-2019

* LO.PIAAC.NUM.YOU.45

PIAAC: Young adults by numeracy proficiency level (%). Level 4 & 5

Description: Percentage of young (age 16-24) adults scoring at least 326 on the 0 to 500 point scale. Tasks at level 4 require the respondent to understand a broad range of mathematical information that may be complex, abstract or embedded in unfamiliar contexts. These tasks involve undertaking multiple steps and choosing relevant problem-solving strategies and processes. Tasks tend to require analysis and more complex reasoning about quantities and data; statistics and chance; spatial relationships; and change, proportions and formulas. Tasks at this level may also require understanding arguments or communicating well-reasoned explanations for answers or choices.  Tasks at level 5 require the respondent to understand complex representations and abstract and formal mathematical and statistical ideas, possibly embedded in complex texts. Respondents may have to integrate multiple types of mathematical information where considerable translation or interpretation is required; draw inferences; develop or work with mathematical arguments or models; and justify, evaluate and critically reflect upon solutions or choices. The target population was the non-institutionalized population, aged 16-24 years, residing in the country at the time of data collection, irrespective of nationality, citizenship or language status. The proportion of adults scoring at different levels of proficiency adds up to 100% when the percentage of numeracy-related non-respondents are taken into account. Adults in the missing category were not able to provide enough background information to impute proficiency scores because of language difficulties, or learning or mental disabilities (literacy-related non-response). For more information, consult the OECD PIAAC website: http://www.oecd.org/site/piaac/

Source: OECD Programme for the International Assessment of Adult Competencies (PIAAC)

Number of observations: 22 counties

Timeframe: 2012

* LO.PIAAC.TEC.3

PIAAC: Adults by proficiency level in problem solving in technology-rich environments (%). Level 3

Description: Percentage of adults scoring equal to or higher than 341 points on the 0 to 500 point scale. At this level, tasks typically require the use of both generic and more specific technology applications. Some navigation across pages and applications is required to solve the problem. The use of tools (e.g. a sort function) is required to make progress towards the solution. The task may involve multiple steps and operators. The goal of the problem may have to be defined by the respondent, and the criteria to be met may or may not be explicit. There are typically high monitoring demands. Unexpected outcomes and impasses are likely to occur. The task may require evaluating the relevance and reliability of information in order to discard distractors. Integration and inferential reasoning may be needed to a large extent. The target population for the survey was the non-institutionalized population, aged 16-65 years, residing in the country at the time of data collection, irrespective of nationality, citizenship or language status. For more information, consult the OECD PIAAC website: http://www.oecd.org/site/piaac/

Source: OECD Programme for the International Assessment of Adult Competencies (PIAAC)

Number of observations: 22 counties

Timeframe: 2012

* LO.PIAAC.NUM.4

PIAAC: Adults by numeracy proficiency level (%). Level 4

Description: Percentage of adults scoring 326 to less than 376 points on the 0 to 500 point scale. Tasks at this level require the respondent to understand a broad range of mathematical information that may be complex, abstract or embedded in unfamiliar contexts. These tasks involve undertaking multiple steps and choosing relevant problem-solving strategies and processes. Tasks tend to require analysis and more complex reasoning about quantities and data; statistics and chance; spatial relationships; and change, proportions and formulas. Tasks at this level may also require understanding arguments or communicating well-reasoned explanations for answers or choices. The target population for the survey was the non-institutionalized population, aged 16-65 years, residing in the country at the time of data collection, irrespective of nationality, citizenship or language status. The proportion of adults scoring at different levels of proficiency adds up to 100% when the percentage of numeracy-related non-respondents are taken into account. Adults in the missing category were not able to provide enough background information to impute proficiency scores because of language difficulties, or learning or mental disabilities (literacy-related non-response). For more information, consult the OECD PIAAC website: http://www.oecd.org/site/piaac/

Source: OECD Programme for the International Assessment of Adult Competencies (PIAAC)

Number of observations: 22 counties

Timeframe: 2012

* LO.PIAAC.NUM.5

PIAAC: Adults by numeracy proficiency level (%). Level 5

Description: Percentage of adults scoring equal to or higher than 376 points on the 0 to 500 point scale. Tasks at this level require the respondent to understand complex representations and abstract and formal mathematical and statistical ideas, possibly embedded in complex texts. Respondents may have to integrate multiple types of mathematical information where considerable translation or interpretation is required; draw inferences; develop or work with mathematical arguments or models; and justify, evaluate and critically reflect upon solutions or choices. The target population for the survey was the non-institutionalized population, aged 16-65 years, residing in the country at the time of data collection, irrespective of nationality, citizenship or language status. The proportion of adults scoring at different levels of proficiency adds up to 100% when the percentage of numeracy-related non-respondents are taken into account. Adults in the missing category were not able to provide enough background information to impute proficiency scores because of language difficulties, or learning or mental disabilities (literacy-related non-response). For more information, consult the OECD PIAAC website: http://www.oecd.org/site/piaac/

Source: OECD Programme for the International Assessment of Adult Competencies (PIAAC)

Number of observations: 22 counties

Timeframe: 2012
