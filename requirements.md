# Database Specification - Airbnb Clone

## Entities and Attributes

### 🧍 User
- user_id: Primary Key, UUID, Indexed  
- first_name: VARCHAR, NOT NULL  
- last_name: VARCHAR, NOT NULL  
- email: VARCHAR, UNIQUE, NOT NULL  
- password_hash: VARCHAR, NOT NULL  
- phone_number: VARCHAR, NULL  
- role: ENUM (guest, host, admin), NOT NULL  
- created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP  

### 🏠 Property
- property_id: Primary Key, UUID, Indexed  
- host_id: Foreign Key → User(user_id)  
- name: VARCHAR, NOT NULL  
- description: TEXT, NOT NULL  
- location: VARCHAR, NOT NULL  
- pricepernight: DECIMAL, NOT NULL  
- created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP  
- updated_at: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP  

### 📅 Booking
- booking_id: Primary Key, UUID, Indexed  
- property_id: Foreign Key → Property(property_id)  
- user_id: Foreign Key → User(user_id)  
- start_date: DATE, NOT NULL  
- end_date: DATE, NOT NULL  
- total_price: DECIMAL, NOT NULL  
- status: ENUM (pending, confirmed, canceled), NOT NULL  
- created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP  

### 💳 Payment
- payment_id: Primary Key, UUID, Indexed  
- booking_id: Foreign Key → Booking(booking_id)  
- amount: DECIMAL, NOT NULL  
- payment_date: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP  
- payment_method: ENUM (credit_card, paypal, stripe), NOT NULL  

### ⭐ Review
- review_id: Primary Key, UUID, Indexed  
- property_id: Foreign Key → Property(property_id)  
- user_id: Foreign Key → User(user_id)  
- rating: INTEGER, CHECK (1–5), NOT NULL  
- comment: TEXT, NOT NULL  
- created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP  

### 💬 Message
- message_id: Primary Key, UUID, Indexed  
- sender_id: Foreign Key → User(user_id)  
- recipient_id: Foreign Key → User(user_id)  
- message_body: TEXT, NOT NULL  
- sent_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP  

---

## Constraints

### User
- `email` must be unique  
- Required fields: `first_name`, `last_name`, `email`, `password_hash`

### Property
- `host_id` must reference a valid `User(user_id)`  

### Booking
- Must reference existing `Property` and `User`  
- `status` can only be: pending, confirmed, or canceled  

### Payment
- Linked to a valid `Booking`  

### Review
- Rating must be between 1 and 5  
- Linked to valid `Property` and `User`  

### Message
- Linked to valid sender and recipient  

---

## Indexing
- Primary Keys are automatically indexed  
- Additional indexes:  
  - `email` in User  
  - `property_id` in Property and Booking  
  - `booking_id` in Booking and Payment
