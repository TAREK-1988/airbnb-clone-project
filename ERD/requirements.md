# Airbnb Clone — ER Diagram Requirements

**Entities:**
- User (id, name, email, password)
- Property (id, owner_id, title, location, price, description)
- Booking (id, user_id, property_id, start_date, end_date, total_price)
- Payment (id, booking_id, amount, payment_date, status)

**Relationships:**
- A User can have many Bookings.
- A Property can have many Bookings.
- Each Booking has one Payment.
