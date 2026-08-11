# Personal Finance Analysis

Analyzing my own spending with SQL, written by me, no copy-paste queries.

This is a learning project: I use my real transactions to practice SQL from scratch, from basic `SELECT`s to subqueries, CTEs, and window functions. Every query here is something I typed, ran, and got wrong at least once before it worked.

## Structure

```
financial-analysis/
├── README.md
├── .gitignore
└── sql/
    ├── schema.sql       
    ├── data.sql         
    ├── sample_data.sql  
    └── queries.sql       
```

## How it works

- `schema.sql` defines a single `spending` table — one row per transaction (income or expense).
- `data.sql` holds my real inserts. It is gitignored on purpose: this repo is public, my spending isn't.
- `sample_data.sql` mirrors the same structure with made-up values, so anyone cloning the repo can run it end to end.
- `queries.sql` collects the analytical questions I answer as I learn, each with a short comment and the actual output kept as a block comment underneath.

## Running it

```
sqlite3 finance.db < sql/schema.sql
sqlite3 finance.db < sql/sample_data.sql
sqlite3 finance.db < sql/queries.sql
```
