;with part as
(
  select
    "ID" 
    , "FileID"
    , "FileName"
    , "Extension" 
    , "Size" 
    , row_number() OVER(PARTITION BY "FileID", "FileName", "Extension", "Size" order by "ID" desc) AS "row_number"
    , dense_rank() OVER(order by "FileID", "FileName", "Extension", "Size") AS "dense_rank"
  from "Files" f 
  --order by "ID" 
)
select 
  p1.*
  , p2."ID" 
  , case when p1."ID" != p2."ID" then true else false end as "hide"
from part p1
  inner join part p2 on p1."FileID" = p2."FileID" and p2."row_number" = 1 and p2."dense_rank" = p1."dense_rank"