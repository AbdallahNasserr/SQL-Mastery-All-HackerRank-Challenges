-- Problem: Type of Triangle
-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
-- Output one of the following statements for each record in the table:
-- • Equilateral: It's a triangle with all sides of equal length.
-- • Isosceles: It's a triangle with two sides of equal length.
-- • Scalene: It's a triangle with all sides of differing lengths.
-- • Not A Triangle: The given values of A, B, and C don't form a triangle.

SELECT 
    CASE 
        WHEN (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR A = C OR B = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;

-- Problem: Binary Tree Nodes
-- You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- Write a query to find the node type of Binary Tree ordered by the value of the node.
-- Output one of the following for each node:
-- • Root: If node is root node.
-- • Leaf: If node is leaf node.
-- • Inner: If node is neither root nor leaf node.

SELECT 
    N, ' ',
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST 
ORDER BY N;
