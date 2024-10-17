-- users
INSERT INTO users (name, email, password) 
VALUES
('Luke Skywalker', 'skywalker@jedi.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Leia Organa', 'princess.leia@alderaan.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Han Solo', 'solo.han@corellia.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- properties
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES
(1, 'Desert Hermit Hut', 'description', './thumbnail_photo_url.png', './cover_photo_url.png', 20, 1, 1, 1, 'Tatooine', 'Old desert road', 'Beggars Canyon', 'Judlan Wastes', '1973', true),
(2, 'Luxury Aldera Mansion', 'description', './thumbnail_photo_url.png', './cover_photo_url.png', 400, 4, 6, 12, 'Alderaan', 'Beru drive', 'Aldera', 'Aldera', '015405666', true),
(3, 'Cheap Hideaway', 'description', './thumbnail_photo_url.png', './cover_photo_url.png', 15, 0, 0.5, 1, 'Corellia', '582 St', 'Cora', 'Warehouse District', '94-582-132', true);

-- reservations
INSERT INTO reservations (start_date, end_date, property_id, guest_id) 
VALUES
('2018-09-11', '2018-09-26', 1, 3),
('2019-05-16', '2019-05-30', 2, 1),
('2021-11-20', '2021-12-28', 3, 2);

-- property_reviews
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) 
VALUES
(1, 3, 1, 2.5, 'Not the worst for a work trip, but the sand gets everywhere'),
(2, 1, 2, 5, 'Super comfortable!'),
(3, 2, 3, 3, 'Did the trick in a pinch');