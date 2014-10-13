truncate tempp;
-- desc Table_2kits; -- 297787 contains final counts for those snps that were found in both kits
-- desc Table_agiv3; -- 75653 contains final counts for those snps that were found only in agi v3 and not in agi v5

-- total 373440 total

SET SQL_SAFE_UPDATES=0;


SELECT count(*) FROM Table_2kits;





-- select sum(TotalAA + TotalAR + TotalRR) as TotalGTC from Table_2kits group by snpid;

-- select * from Table_2kits where TotalAA + TotalAR + TotalRR = 395;
-- update Table_2kits set TotalRR = 473 - (TotalAA + TotalAR) where P != 3;
-- update Table_agiv3 set TotalRR = 264 - (TotalAA + TotalAR) where P = 1;