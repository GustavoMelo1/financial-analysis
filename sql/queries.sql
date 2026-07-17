
-- Total amount spent

SELECT SUM(amount) FROM spending WHERE transaction_type = 'expense' ;

/*
╭─────────────╮
│ SUM(amount) │
╞═════════════╡
│       160.9 │
╰─────────────╯
*/


-- Amount spent by category

SELECT SUM(amount), category FROM spending WHERE transaction_type = 'expense' GROUP BY category ;

/*
╭─────────────┬───────────╮
│ SUM(amount) │ category  │
╞═════════════╪═══════════╡
│        55.9 │ Food      │
│         100 │ Leisure   │
│           5 │ Transport │
╰─────────────┴───────────╯
*/