table: cats
```

id          name        age         breed          net_worth 
----------  ----------  ----------  -------------  ----------
1           Mary        3           Scottish Fold  1000000
2           Hana        1           Tabby          21800
3           Grumpy Cat  4           Persian        181600
4           Lil' Bub    2           Tortoiseshell  2000000
5           Sappho      19          White Short H  800000
6           Linus       14          Tabby          2100
7           Maxine      8           Domestic Shor  500
8           Bat         12          Domestic Shor  500
9           Dove        14          Domestic Shor  500


```
table: owners
id          name
----------  ----------
1           Hudson
2           Sophie
3           Penny
4           Becca
5           Veve
6           Lilly

JOIN TABLE: cats_owners  JOIN TABLE
cat_id      owner_id
----------  ----------
2           2
4           3
1           2
5           1
5           5
5           4
7           1
8           6
9           6