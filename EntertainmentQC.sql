--1. Create an agent phone list
SELECT [Agent FirstName]+[Agent LastName] AS AgentName, [Agent PhoneNumber] FROM Agents$ ORDER BY AgentName ASC;
--2. Create a list of customers by city
SELECT [Customer FirstName]+ [Customer LastName] AS CustomerName, [Customer City] FROM Customers$ ORDER BY [Customer City] ASC;
--3. Create a list of when an agent received their first review (180 days after being hired)
SELECT [Agent FirstName]+[Agent LastName] AS AgentName, DateHired + 180 AS FirstReview FROM Agents$;
--4. Create a report of the net price per contract that lists our fee (contract price * our fee (12%)) and the net amount per contract (contract price - (contract price * our fee (12%)) 
SELECT EngagementNumber, ContractPrice *0.12 AS Fee, (ContractPrice-(ContractPrice*0.12)) AS NetAmount FROM Engagements$;
--5. Create a report of all engagements that last more than 3 days
SELECT EngagementNumber,StartDate,EndDate FROM Engagements$ WHERE EndDate-StartDate>3;
--6. Create a report of all October engagments that occured in 2017
SELECT EngagementNumber, StartDate FROM Engagements$ WHERE StartDate > '2017-09-30' AND StartDate < '2017-11-01' ORDER BY StartDate ASC;
--7. Create a report of all October engagements that occured between noon and five pm

--8. Create a list of all customers and the groups they have booked

--9. Create a list of all agents that have no contracts

--10. Create a list of all customers with no bookings

--11. Create a list of all performers that have never been booked

--12. Create a list of each customers last booking 

--13. Create a list of customers who like country or country rock

--14. Create a report of the number of engagements each group has performed for us

--15. Create a report of the average agent salary

--16. Show our earliest October engagment in 2017

--17. Show the value of our October 2017 bookings

--18. Create a report of our agent sales and commissions. Report should have agent full name, the total contract proce for that agent, and the earned commission for that agent

--19. Show only those agents who have a commission greater than $1000

