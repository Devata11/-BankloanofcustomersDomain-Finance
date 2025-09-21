##1.kpi
select* from finance_1;
select year(issue_d) as year_of_issue_d, 
concat("$", format(round(sum(loan_amnt)/1000,2),0)," M ")as loan_amount from finance_1 
group by year_of_issue_d order by  year_of_issue_d; 
select year(issue_d) as year_of_issue_d, sum(loan_amnt) as loan_amount from finance_1 group by year_of_issue_d order by  year_of_issue_d; 

##.kpi2
select* from finance_2;
select grade,sub_grade,concat("$",format(round(sum(revol_bal)/10000,2),0),"M") as total_revol_bal from finance_1 inner join finance_2 on finance_1.﻿id=finance_2.﻿id 
 group by grade, sub_grade order by grade,sub_grade; 
 
 ##kpi3
 select* from finance_1;
 select* from finance_2;
 select verification_status ,concat("$", format(round(sum(total_pymnt)/1000000,2),2),"M") as total_pymt from finance_1
 inner join finance_2 on finance_1.﻿id=finance_2.﻿id 
 group by verification_status;
 
 ##kpi4
 select* from finance_1;
select * from finance_2;
select addr_state, loan_status,monthname(last_credit_pull_d) as month_wise from finance_1
 inner join finance_2 on finance_1.﻿id=finance_2.﻿id group by addr_state,loan_status,month_wise order by month_wise;

##kpi5- homeownership vs last_pymnt
select*  from finance_1;
select  home_ownership,last_pymnt_d,concat("$", format(round(sum(last_pymnt_amnt)/10000,2),2)," k ") as total_pymnt from finance_1
 inner join finance_2 on finance_1.﻿id=finance_2.﻿id 
group by home_ownership,last_pymnt_d order by last_pymnt_d desc,home_ownership desc;
 
 
 