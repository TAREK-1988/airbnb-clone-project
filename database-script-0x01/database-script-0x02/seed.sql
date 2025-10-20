INSERT INTO users (first_name, last_name, email, password_hash, role)
VALUES 
('Tarek', 'Sayed', 'tarek@example.com', 'hashed_pw', 'host'),
('Mona', 'Ali', 'mona@example.com', 'hashed_pw', 'guest');

INSERT INTO properties (host_id, name, description, location, price_per_night)
VALUES 
(1, 'Modern Apartment in Zamalek', '2-bedroom apartment with Nile view', 'Cairo', 950.00),
(1, 'Beach House in Alexandria', 'Relaxing villa by the sea', 'Alexandria', 1250.00);

INSERT INTO bookings (property_id, user_id, start_date, end_date, total_price, status)
VALUES 
(1, 2, '2025-10-10', '2025-10-15', 4750.00, 'confirmed');

INSERT INTO payments (booking_id, amount, payment_method)
VALUES 
(1, 4750.00, 'credit_card');

INSERT INTO reviews (property_id, user_id, rating, comment)
VALUES 
(1, 2, 5, 'Amazing apartment! Great view and clean.');

INSERT INTO messages (sender_id, recipient_id, message_body)
VALUES 
(2, 1, 'Hi Tarek, I loved your apartment!');
