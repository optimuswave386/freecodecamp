# 💻 Project: Querying data based on user request.

![periodic table banner (4)](https://user-images.githubusercontent.com/88495091/209232470-e7d902b6-0ceb-407e-b3ba-7f3042655162.png)

## Project Goal
Create a Bash script to get information about chemical elements from a periodic table database.

Project made as part of the FreeCodeCamp Relational Databases Beta Certificate course

## Process

Connected to the periodic database provided by FreeCodeCamp, fixed mistakes and added appropriate constraints and extra chemical elements information.

Created a Bash script (version controlled with git) that accepts an argument in the form of an atomic number, symbol, or name of an element and outputs some information about the given element.

View: <a href="https://github.com/CheilaDaSilva/periodic_table_database/blob/main/element.sh"> elements.sh
  </a>

---

## FreeCodeCamp Project instructions


- Connect to the database `periodic_table` which is already available. Get a little familiar with the existing tables, columns, and rows.
- Read the instructions below and complete user stories to finish the project.

### Part 1: Fix the database

- There are some mistakes in the database that need to be fixed or changed. See the user stories below for what to change.

### Part 2: Create your git repository

- Make a small bash program. The code needs to be version controlled with `git`, so you will need to turn the suggested folder into a git repository.

### Part 3: Create the script

- Make a script that accepts an argument in the form of an 'atomic number', 'symbol', or 'name' of an element and outputs some information about the given element.

### Tasks completed

- [x] Rename the `weight` column to `atomic_mass`
- [x] Rename the `melting_point` column to `melting_point_celsius` and the `boiling_point` column to `boiling_point_celsius`
- [x] The `melting_point_celsius` and `boiling_point_celsius` columns should not accept null values
- [x] Add the `UNIQUE` constraint to the `symbol` and `name` columns from the `elements` table
- [x] The `symbol` and `name` columns should have the `NOT NULL` constraint
- [x] Set the `atomic_number` column from the `properties` table as a foreign key that references the column of the same name in the `elements` table
- [x] Create a `types` table that will store the three types of elements
- [x] The `types` table should have a `type_id` column that is an integer and the primary key
- [x] The `types` table should have a `type` column that's a `VARCHAR` and cannot be `null`. It will store the different types from the `type` column in the `properties` table
- [x] Add three rows to your `types` table whose values are the three different types from the `properties` table
- [x] The `properties` table should have a `type_id` foreign key column that references the `type_id` column from the `types` table. It should be an `INT` with the `NOT NULL` constraint
- [x] Each row in your `properties` table should have a `type_id` value that links to the correct type from the `types` table
- Capitalize the first letter of all the `symbol` values in the `elements` table. Be careful to only capitalize the letter and not change any others
- [x] Remove all the trailing zeros after the decimals from each row of the `atomic_mass` column. You may need to adjust a data type to `DECIMAL` for this. Be careful not to change the value
- [x] Add the element with atomic number `9` to your database. Its name is `Fluorine`, symbol is `F`, mass is `18.998`, melting point is `-220`, boiling point is `-188.1`, and it's a `nonmetal`
- [x] Add the element with atomic number `10` to your database. Its name is `Neon`, symbol is `Ne`, mass is `20.18`, melting point is `-248.6`, boiling point is `-246.1`, and it's a `nonmetal`
- [x] Create a `periodic_table` folder in the `project` folder and turn it into a git repository with `git init`
- [x] Your repository should have a `main` branch with all your commits
- [x] The `periodic_table` repo should have at least five commits
- [x] Create an `element.sh` file in your repo folder for the program I want you to make
- [x] Script (`.sh`) file should have executable permissions
- [x] If you run `./element.sh`, it should output `Please provide an element as an argument.` and finish running.
- [x] If you run `./element.sh 1`, `./element.sh H`, or `./element.sh Hydrogen`, it should output `The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.`
- [x] If you run `./element.sh` script with another element as input, you should get the same output but with information associated with the given element.
- [x] If the argument input to your `element.sh` script doesn't exist as an `atomic_number`, `symbol`, or `name` in the database, the output should be `I could not find that element in the database.`
- [x] The message for the first commit in your repo should be `Initial commit`
- [x] The rest of the commit messages should start with `fix:`, `feat:`, `refactor:`, `chore:`, or `test:`
- [x] You should delete the non existent element, whose `atomic_number` is `1000`, from the two tables
- [x] Your `properties` table should not have a `type` column
- [x] You should finish your project while on the main branch. Your working tree should be clean and you should not have any uncommitted changes

