-- =========================
-- Recipe Master AI Database
-- MVP Version (Scalable)
-- =========================

-- 🇨🇳 Countries
CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    code VARCHAR(10)
);

-- 🍱 Categories
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- 🍳 Recipes
CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    country_id INT REFERENCES countries(id),
    category_id INT REFERENCES categories(id),

    cook_time INT,
    difficulty VARCHAR(20),
    servings INT,
    calories INT,

    image TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🥬 Ingredients
CREATE TABLE ingredients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- 🔗 Recipe Ingredients (Many-to-Many)
CREATE TABLE recipe_ingredients (
    id SERIAL PRIMARY KEY,
    recipe_id INT REFERENCES recipes(id) ON DELETE CASCADE,
    ingredient_id INT REFERENCES ingredients(id),
    amount VARCHAR(50)
);

-- 👨‍🍳 Steps
CREATE TABLE recipe_steps (
    id SERIAL PRIMARY KEY,
    recipe_id INT REFERENCES recipes(id) ON DELETE CASCADE,
    step_number INT,
    description TEXT
);

-- ❤️ Favorites
CREATE TABLE favorites (
    id SERIAL PRIMARY KEY,
    user_id INT,
    recipe_id INT REFERENCES recipes(id) ON DELETE CASCADE
);
