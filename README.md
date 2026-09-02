# odin-tic-tac-toe

I started by trying to write unit tests for the different functions which worked well but when I tried to write tests for the entire game, it didn't work. After stumbling across a talk by Sandi Metz (https://www.youtube.com/watch?v=URSWYvyc42M) I determined that what I was trying to do when testing an entire tic tac toe game was actually integration testing which I felt was out of scope for what I wanted to achieve.

This was a fairly challenging game to create with figuring out switching off between players and, most challenging, figuring out if a game was a tie or not. With the help of the #difference method that is built into arrays, I was able to simplify the code down drastically.

I think that there could be more refactoring to make it more concise and DRY but I'm pretty satisfied with the result.

As a stretch goal, I think it would have been cool to add logic for a coin flip to decide who gets to go first but that also felt out of scope.