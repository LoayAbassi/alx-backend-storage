# 0x00 mysql advanced
I. ressources:
cheatsheet --> https://devhints.io/mysql
mysql performance --> https://www.liquidweb.com/blog/mysql-optimization-how-to-leverage-mysql-database-indexing/

# terms :
Dump : a .sql file containing table creation and data insertion (usualy used for backup,replication or migration)





II. notes
1. indexing

    makes data retrieval faster by searching with row numbers , 
    like searching for book page where each page is numbered 
    so you don't have to read the whole book to find what you're looking for 

    Enhances data access by creating a new data structure (e.g., B-tree)

    example :
        CREATE INDEX idx_department ON employees(department);
        // will make department a key search in a tree :,) 
        SELECT * FROM employees WHERE department = 'IT';

    PS: not all tables are a fit for indexing cz it becomes faster
    when retrieving , slower when updating.

    choosing the index column is the most challenging part ,
    cz it have to be the column most used in th where clause 
    in the query that's always called 

    setting unique indexes makes the search faster since it
    makes the code know there are no duplicates so it can skip some checks 

2. trigger

    delimiter:
        used when dealing with multiple sub_blocks like triggers , 
        to make sure the block doesn't end at the first ; 
        instead 'delimiter //; .... delimiter;' will make // as new one.

    PS : triggers are before and after triggers... focus

3. function

    DETERMINISTIC function : same output for same input 
    caching : if function called multiple times , values will be saved for futur usages 

    cursors should be last thing to declare inside.

4. view

    virtual table that is a subtable of another
    

