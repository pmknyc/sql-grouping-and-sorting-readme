table: cats
id          name        age         breed          net_worth   cat_owner   owner_name
----------  ----------  ----------  -------------  ----------  ---------   ------------
1           Mary        3           Scottish Fold  1000000        9      [ get from join table]
2           Hana        1           Tabby          21800          5
3           Grumpy Cat  4           Persian        181600         6
4           Lil' Bub    2           Tortoiseshell  2000000        3
5           Sappho      19          White Short H  800000         4
6           Linus       14          Tabby          2100           1
7           Maxine      8           Domestic Shor  500            1
8           Bat         12          Domestic Shor  500            8
9           Dove        14          Domestic Shor  500            8

table: owners
id          name      
----------  ----------
1           Hudson
2           Sophie    
3           Penny
4           Becca
5           Veve
6           Lilly
7           Shawn
8           Paula
9           Hilary
-- [10          Alan] ADD using INSERT INTO, and add to dogs table using query

id          name        age         breed       dog_owner 
----------  ----------  ----------  ----------  ----------
1           Rover       3           bulldog         2
2           Fido        2           bulldog         6
3           Fluffy      4           shitsu          3
4           Buddy       8           dachshund       1
5           Doc         11          dachshund       1
6           Belle       5           labrador        4
7           Sophie      9           poodle          5
8           Zoe         10          jack russe      7
9           Maddie      6           german         [Alan - add using query] 
10          Elliot      4           beagle          8
11          Cole        3           labrador        9


JOIN TABLE: pets_owners  JOIN TABLE
cat_owner_id owner_id      dog_owner_id
----------  ----------    --------------
2           2
4           3
1           2
5           1
5           5
5           4
7           1
8           6
9           6