-- =========================
-- CATEGORIES
-- =========================
INSERT INTO categories (name) VALUES
('Seafood'),
('Chicken'),
('Pork'),
('Beef'),
('Rice'),
('Noodles'),
('Soup'),
('Vegetarian');

-- =========================
-- COUNTRIES
-- =========================
INSERT INTO countries (name, code) VALUES
('Thailand', 'TH'),
('China', 'CN'),
('Japan', 'JP');
INSERT INTO recipes (title, description, country_id, category_id, cook_time, difficulty, servings, calories, image)
VALUES

('Pad Thai', 'Thai stir-fried noodles with shrimp and tamarind sauce', 1, 6, 20, 'Medium', 2, 450, ''),

('Tom Yum Goong', 'Spicy sour shrimp soup', 1, 7, 25, 'Medium', 2, 300, ''),

('Green Curry Chicken', 'Thai green curry with coconut milk', 1, 2, 30, 'Medium', 3, 600, ''),

('Fried Rice Egg', 'Simple egg fried rice', 2, 5, 15, 'Easy', 1, 350, ''),

('Kung Pao Chicken', 'Chinese spicy chicken with peanuts', 2, 2, 25, 'Medium', 2, 500, ''),

('Beef Teriyaki', 'Japanese sweet soy beef', 3, 4, 20, 'Easy', 2, 550, ''),

('Ramen Shoyu', 'Japanese soy sauce ramen', 3, 6, 40, 'Hard', 2, 700, '');
INSERT INTO ingredients (name) VALUES
('Chicken'),
('Pork'),
('Beef'),
('Shrimp'),
('Rice'),
('Noodles'),
('Garlic'),
('Soy Sauce'),
('Fish Sauce'),
('Chili'),
('Coconut Milk'),
('Egg'),
('Onion'),
('Sugar'),
('Salt');
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, amount)
VALUES
(1, 6, '200g'),
(1, 4, '100g'),
(1, 9, '2 tbsp'),

(2, 4, '200g'),
(2, 10, '3 pcs'),

(3, 1, '250g'),
(3, 11, '200ml'),

(4, 12, '2 pcs'),
(4, 5, '200g');
