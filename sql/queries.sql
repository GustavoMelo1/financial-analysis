
-- Total amount spent
SELECT SUM(amount) FROM spending WHERE transaction_type = 'expense';

/*
╭─────────────╮
│ SUM(amount) │
╞═════════════╡
│       160.9 │
╰─────────────╯
*/


-- Amount spent by category
SELECT SUM(amount), category FROM spending WHERE transaction_type = 'expense' GROUP BY category;

/*
╭─────────────┬───────────╮
│ SUM(amount) │ category  │
╞═════════════╪═══════════╡
│        55.9 │ Food      │
│         100 │ Leisure   │
│           5 │ Transport │
╰─────────────┴───────────╯
*/

-- All transactions ordered by amount (ascending)
SELECT * FROM spending ORDER BY amount ASC;
/*
╭────┬────────────┬───────────────┬───────────┬────────┬──────────────────╮
│ id │    date    │  description  │ category  │ amount │ transaction_type │
╞════╪════════════╪═══════════════╪═══════════╪════════╪══════════════════╡
│  2 │ 2026-07-07 │ Uber to work  │ Transport │      5 │ expense          │
│  3 │ 2026-07-07 │ Cake the BOX  │ Food      │     10 │ expense          │
│  1 │ 2026-07-07 │ iFood order   │ Food      │   45.9 │ expense          │
│  4 │ 2026-07-07 │ Skin Valorant │ Leisure   │    100 │ expense          │
│  5 │ 2026-08-05 │ First salary  │ Salary    │    580 │ income           │
╰────┴────────────┴───────────────┴───────────┴────────┴──────────────────╯
*/

