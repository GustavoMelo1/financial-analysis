CREATE TABLE spending(
id INTEGER PRIMARY KEY,
date DATE NOT NULL,
description TEXT,
category TEXT NOT NULL,
amount DECIMAL NOT NULL,
transaction_type TEXT NOT NULL);