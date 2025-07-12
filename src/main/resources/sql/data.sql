
-- Insert groups first (parent table)
INSERT INTO "Group" (numOfGroup) VALUES
                                     ('CS-101'),
                                     ('CS-102'),
                                     ('MATH-201'),
                                     ('PHYS-301')
    RETURNING group_id, numOfGroup;  -- Shows inserted IDs

-- Insert students with explicit group_id references
INSERT INTO Student (name, surname, group_id) VALUES
                                                  ('John', 'Doe', 1),   -- CS-101
                                                  ('Jane', 'Smith', 1),  -- CS-101
                                                  ('Michael', 'Johnson', 2),  -- CS-102
                                                  ('Emily', 'Williams', 3),  -- MATH-201
                                                  ('David', 'Brown', 4),  -- PHYS-301
                                                  ('Sarah', 'Miller', 2);  -- CS-102