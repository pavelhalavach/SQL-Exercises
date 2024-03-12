CREATE USER john IDENTIFIED BY '1234' -- without restrictions
			-- john@localhost
            -- john@'%.codewithmosh.com' -- можно подключатся с этой домены или 
										-- с субдомен (%.)
			-- john@127.0.0.1 -- ip kompa