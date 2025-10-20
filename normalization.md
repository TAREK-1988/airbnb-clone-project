# Airbnb Clone — Database Normalization

**1NF (First Normal Form):**
- Each table column contains atomic (indivisible) values.
- Each record is unique with a primary key.
- Example: In `users` table, each email is unique.

**2NF (Second Normal Form):**
- All non-key columns fully depend on the entire primary key.
- Example: In `bookings`, all attributes depend on `booking_id`.

**3NF (Third Normal Form):**
- No transitive dependencies.
- Example: User details are stored only in `users` table, not repeated in `bookings`.

✅ The final Airbnb database schema is normalized up to **Third Normal Form (3NF)**.
