SELECT * FROM movie;
SELECT * FROM costumer;
SELECT * FROM genre;
SELECT * FROM screening;
SELECT * FROM seatAvailability;
SELECT * FROM paymentMethod;
SELECT * FROM seatReservation;
SELECT * FROM ticket;
SELECT * FROM cinemaHall;

-- all movies with genre type
SELECT 
    Movie.Title, 
    Genre.Type AS Genre 
FROM 
    Movie 
JOIN 
    Genre 
ON 
    Movie.GenreId = Genre.Id;


--info of all screenings of movies 
SELECT 
    Screening.ScreeningTime, 
    CinemaHall.Name AS HallName, 
    Movie.Title AS MovieTitle 
FROM 
    Screening 
JOIN 
    CinemaHall 
ON 
    Screening.CinemaHallId = CinemaHall.Id 
JOIN 
    Movie 
ON 
    Screening.MovieId = Movie.Id;

-- seat availability for fast and forious
SELECT 
    SeatAvailability.SeatNumber, 
    SeatAvailability.Available 
FROM 
    SeatAvailability 
WHERE 
    SeatAvailability.ScreeningId = 1;

-- seat reservation of bought ticket
SELECT 
    SeatReservation.Id AS ReservationId, 
    Costumer.Name, 
    Costumer.Surname, 
    Screening.ScreeningTime, 
    CinemaHall.Name AS HallName, 
    Movie.Title AS MovieTitle 
FROM 
    SeatReservation 
JOIN 
    Costumer 
ON 
    SeatReservation.Id = Costumer.Id 
JOIN 
    Screening 
ON 
    SeatReservation.ScreeningId = Screening.Id 
JOIN 
    CinemaHall 
ON 
    Screening.CinemaHallId = CinemaHall.Id 
JOIN 
    Movie 
ON 
    Screening.MovieId = Movie.Id;
