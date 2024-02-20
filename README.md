# Django News App

This is a news application built with Django, designed to exercise various web development concepts and technologies. The application fetches news from external APIs and displays them in a user-friendly interface.

## Technologies Used

- **Django**: A high-level Python Web framework that encourages rapid development and clean, pragmatic design.
- **Sass**: A preprocessor scripting language that is interpreted or compiled into CSS.
- **Tailwind CSS**: A utility-first CSS framework for rapidly building custom user interfaces.
- **HTMX**: A library that allows access to AJAX, CSS Transitions, WebSockets and Server Sent Events directly in HTML, using attributes, so you can build modern user interfaces with the simplicity and power of hypertext.
- **External APIs**: The application fetches news from various external APIs.

## Setup and Installation

1. Clone the repository.
2. Install the dependencies with `pip install -r requirements.txt` and `npm install`.
3. Run the `start.sh` script to compile Sass and Tailwind CSS, combine CSS files, collect static files, and start the Django server:

   ```bash
   ./start.sh
   ```

   If you get a permission error, you may need to make the script executable with `chmod +x start.sh`.

4. Visit `localhost:8000` in your web browser to see the application in action.

## Contributing

This project is open for contributions. Feel free to fork the project and submit a pull request with your changes!

## License

This project is licensed under the terms of the MIT license.