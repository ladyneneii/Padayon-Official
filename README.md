This is the third and final repository of our App Dev project "Padayon;" 

The first repository https://github.com/ladyneneii/CS3105-02-Interactive-Website contains only the client side of the app. 
The second repository https://github.com/ladyneneii/Padayon contains both the server and client sides of the app, but because of submodule problems, a third repository had to be created. 

To run the project:

1. Clone the repository:
```
git clone https://github.com/ladyneneii/Padayon-Official
```

2. Open a terminal window:

``` 
cd Padayon-Official/client
npm install vite --save-dev
npm run dev
```
Click on the provided link.

3. Open another terminal window:

```
cd Padayon-Official/server
npm run start
```

4. Import the sql files at the Padayon-Official/sql directory. In case there are errors importing the sql files, import the sql file at the Padayon-Official/alternative-sql directory. Adjust the MySQL credentials on line 25 of the Padayon-Official/server/index.js file accordingly.


