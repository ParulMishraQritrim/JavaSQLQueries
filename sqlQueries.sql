---to check duplicate value, it creates virtual table that could be saved under the name of dup_check  https://www.youtube.com/watch?v=LXqpx9mr0Is----
dup_check as (
select * from row_number() over (partition by Colname1, Colname2,colname3 order by SrNo) duplicatevalues from tablename)


---makes local tempTable #, makes global tempTable ##----
select * into #aliasname from tablename where colName = condition