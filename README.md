# CS312 MySQL Project

This SQL file (`reddy17.sql`) creates and populates tables for a mock university course enrollment system.

## Features

- `reddy17_students`: student records with GPA
- `reddy17_classes`: course catalog
- `reddy17_enrollments`: student-course-semester data
- Complex queries including:
  - Join-based filtering
  - Aggregated total credits
  - Grouped course lists per student

## How to Run

1. Load the file in MySQL:

   ```sql
   SOURCE reddy17.sql;
