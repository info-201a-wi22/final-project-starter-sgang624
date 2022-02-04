# Project Safe and Equitable Neighborhoods :house_with_garden:
## Background Info :books:
#### **Code Name**: Safe n' Sound
#### **Authors**: Duy Nguyen (dnh7@uw.edu), Victoria Mulugeta (vmulu1@uw.edu), Mike Ramsey (mramsay2@uw.edu), Sumaya Mohamud (smoham2@uw.edu), Suraj Gangaram (sgang624@uw.edu)
#### **Affiliation**: INFO-201: Technical Foundations of Informatics - The Information School - University of Washington
#### **Date**: Winter 2022

 ---

## Abstract :pencil:
**Our main question** is about neighborhood safety and how much of a factor socioeconomic status has on the safety within a neighborhood. **This question is of importance** because many communities do not have the proper representation and protection, and they are adversely affected by crime and city negligence as a result. **To address the question**, we will analyze datasets of crime rates in both higher income and lower income neighborhoods in order to determine any associations between a neighborhood’s socioeconomic status and level of crime (measured in rates).

## Keywords :key:
**Crime, Safety, Low-Income, Neighborhood, Economic-DIfferences**

---

## Introduction :memo:
The project we are hoping to construct with our topic of neighborhood safety, is bringing attention to the **lack** of safety in lower-income neighborhoods. Through _analyzing_ different neighborhoods crime and safety data in relation to the socioeconomic incomes of the families in those neighborhoods we hope to raise attention to the discrepancies between the amount of police and crime protection low income neighborhoods receive in comparison to higher income neighborhoods.  With the results gathered from this project, we hope to provide useful insight for those representing lower income neighborhoods and incentive to bring about change, through implementing new legislations and bills to ensure that those with low incomes feel safe and are protected from crimes within their neighborhoods. Additionally, we hope that this project will spark interest in others to also research the differences in crime and protection and continue to provide more data to implement changes to address these inequities.

## Research Questions :question:
* How much of an issue is neighborhood safety in low income areas?
* What type of crimes are likely to occur in low-income areas?
* What is the difference between crime rates in low-income and high-income areas?
* What is the biggest factor that contributes to how much crime a neighborhood endures?

The _**research questions**_ we plan to address with our project are motivated by basic safety needs for those living within the neighborhoods we are studying. We are already conscious of the variances in police protection in higher income communities in contrast to lower income communities. Shedding light to and imploring these questions are vital to bringing about change. Our research questions are important because they will challenge the current policing and crime protection of lower income communities and provide the necessary basis to explore the data of crime rates. With the data collected we plan to help find answers to the questions below:

## Design Situation:
### Project-Framing: :straight_ruler:
The **goal** of this project is to study the _connection_ between the income level in different areas and the different types of crime rates in those areas. By doing this, we are trying to bring attention to **the safety and equity issues** in low-income neighborhoods. A similar project found that for poor income households, the rate of nonfatal violent victimization doubled compared to high-income households[^1]. We **hope** this project and others like it can become useful data for activists, journalists, politicians, or anyone trying to bring forth equity and safety to the marginalized and minoritized communities in America. 
### Human-Values: :sparkles:
The two human-values in our topic are **Equity** and **Safety**. **Equity** is the value of _fair treatment and justice among all people_. In this value, it must be _**acknowledged**_ not all people have access to equal resources and opportunities, and we must work together to eliminate inequalities and bring everyone to the same level of equality. This leads to **Safety** as a value. As humans, we all want to be safe. Having equity for everyone leads to the safety of all people as motivations for committing crimes gets eliminated[^2]. 
### Direct Stakeholders: :eyes:
Some of the direct stakeholders are **low-income community leaders, researchers, journalists, students, and activists**. These individuals are those who will be directly advocating and reporting these inequalities present in the data. Whether they will bring good or harm to these low-income communities will _depend_ on the stakeholders and the values they hold. Still, the ability to understand statistical analysis is required to effectively utilize this project.
### Indirect Stakeholders: :busts_in_silhouette:
Some of the indirect stakeholders are city council members, state representatives, and news readers/watchers. They are the people that arguments, bills, and legislatures constructed from this project are being presented to. They are people that hold power in making decisions that can make the world more equitable and safer for minoritized and marginalized groups. 
### Benefits: :white_check_mark:
The benefit of this project is highlight issues of safety and crimes affecting low-income areas. From this, bills, legislatures, and arguments can be constructed to bring forth **a more equitable and safer place for everyone**. By doing this project, _**hopefully**_ it will inspire others to do similar projects.
### Harms: :x:
Potential harms from this project is the potential of **redlining** in low-income neighborhoods due to the publication of this project. By publicly displaying information about crime rates of neighborhoods, **social stigma(s)** could be formed around different neighborhoods, thus _**negatively**_ affecting the lives of people living in those communities[^3]. This could lead to reduced sales for business as they see less people coming to them or redlining from banks for people in the neighborhood.

## The Dataset: :chart_with_upwards_trend:	
### Size and Complexity: :clipboard:
The dataset we will use compares housing price index with crime rates in various cities around the United States from 1975 to 2015. It has **3477** rows/observations and **9** columns/features. However, after cleaning it up, there are only **1714** rows/observations useful for us to use. We believe this is due to _programming errors_ in previous mergers of the dataset before we got this data. However, this was likely an _formatting error_ rather than significant data loss, therefore, we chose to keep using this dataset.
### Data Provenance: :mag:
The data represents communities from around the United States over the span of 40 years.

Some of the crimes or variables that were recorded in this dataset are homicides, rapes, assualts and robberies. The city, population, year and housing price index are also included. 

The data was collected from another kaggle dataset, created by the Marshall Project, that measures crime rates across the United States from 1975 to 2015 and the FHFA house prices index. The Marshall Project, created in 2014, is a nonprofit, online journalism organization with a focus on issues related to criminal justice in the United States. It has been funded by donations and grants from various individuals and foundations. The FHFA is a federal agency in the United States that regulates mortgages. The house prices index is a measure of the movement of single-family house prices.

The two datasets that were used to compile our set come from two trustworthy and well-known organizations that have been collecting data for a considerable amount of time.

We obtained this dataset from kaggle. It was created by merging the two datasets from The Marshall Project and FHFA. They were merged together by kaggle contributor, SandeepRamesh, with the goal of uncovering a correlation between crime rate and housing price index. 

**Additional Info**: 
We also found two other datasets. One from the Port of Seattle that measures equity across King County. It also has some decent information by displaying an interactive map, showing varying equity levels across King County. The issue is that we don’t have access to the raw csv file, so we can not use this data. The other is also from kaggle and compares crime rate and unemployment rate in the United States from 1976 to 2014. We could also join this dataset with the housing price index dataset if we wanted to measure another factor that may contribute to the overall safety of communities around the United States.
## Expected Implications :heavy_exclamation_mark:
Expected Implications from a low-income neighborhood where crime increases with no police coverage. Homeowners in a disadvantaged neighborhood can lead to police having far more expectations of reports being made. Not having any proof of what happened could put someone at a disadvantage. The police are only given a certain amount of information and that information is what they go on. If we don't find a way to make matters like these open to the public eye, what wrong will people see? As crime rates increase and neighbors are being put into a more vulnerable state this could affect the homeowner's property and make break-ins more common in their neighborhoods. Socioeconomically disadvantaged families are put at a bigger disadvantage affecting their peers and school. There are much more self-reporting crimes coming from low-income communities. Low-income communities are at a higher risk but are neglected instead. Leaving low-income communities being put into more of a disadvantage.
## Limitations: :hand:
Some limitations that we might need to consider are the lack of crime reports for certain areas and the quantifiability of certain crime reports. Some neighborhoods may not have full records of crime reports, so we would have to either omit or make those data not available (N/A) to exclude them from any aggregate calculations. Furthermore, some data on crime might not be fully quantifiable, so we would have to discuss as a group which data we would have to prioritize or outright omit for the sake of our analysis. Moreover, data on crime can be self-reported, meaning that data would be inconsistent and unstandardized, so we need to be careful watching out for such confounding variables before we move forward with our analysis.[^4]

[^1]: [Reports by U.S. Department of Justice on Households Poverty & Non-fatal violent victimization](https://bjs.ojp.gov/content/pub/pdf/hpnvv0812.pdf)
[^2]: [How neighborhood inequality leads to higher crime rates](https://blogs.lse.ac.uk/usappblog/2016/07/08/how-neighborhood-inequality-leads-to-higher-crime-rates/)
[^3]: [Effect of neighborhood stigma on economic transactions](https://www.pnas.org/content/112/16/4994#:~:text=The%20hypothesis%20of%20neighborhood%20stigma,in%20their%20interactions%20with%20strangers)
[^4]: [Improving Crime Data to Make Better Policy](https://www.datacoalition.org/improving-crime-data-to-make-better-policy/)