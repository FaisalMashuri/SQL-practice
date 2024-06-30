SELECT E.name as Employee
from Employee as E
         LEFT JOIN Employee as M ON E.managerId = M.id
WHERE E.salary > M.salary;