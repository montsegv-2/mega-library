# Mega-library 📚

## Description of project
This reading hub is designed to be a personal digital library. It allows users to organize their book collection, keep track of their past, present, and future reads, and discover new reads based on their tastes.

## Objectives:

- Organization: Group books by genre, reading status, and other custom categories.
- Tracking: Maintain a detailed record of books read, in progress, and on the wishlist.
- Discovery: Offer book recommendations based on the user's favorite genres and books similar to those they have already enjoyed.
- Analysis: Provide statistics on the user's reading habits, such as the number of books read by genre or the average time spent reading.

## Visualization of mega-library

## ER Diagram

<img width="741" alt="Screenshot 2024-08-11 at 2 09 43 a m" src="https://github.com/user-attachments/assets/bc6bf22f-00e1-4614-b166-9ff7445866d5">

## Installation Instructions

### Prerequisites
* **Visual Basic 6:** Download and install Visual Basic 6.

### Steps
1. **Download:** Download the project files.
2. **Extract:** Extract the downloaded files to your desired location.
3. **Open Project:**
   * Open Visual Basic 6.
   * Go to "File" -> "Open Project".
   * Navigate to the extracted folder and  your file .vbp

### Database Connection
1. **Import Data:**
   * Import the data from the "base_datos" folder into a SQL Server database.
2. **Update Connection String:**
   * In Visual Basic 6, go to the module section.
   * Find the line where the database connection string is defined.
   * Replace the placeholders with your actual server, database, username, and password:
     ```vbnet
     Con.Open "Driver={SQL Server}; Server= YOUR_SERVER; Database= YOUR_DATABASE; User Id= YOUR_USERNAME; Password= YOUR_PASSWORD;"
     ```

**Note:** Ensure that you have the necessary SQL Server drivers installed and configured.

**With these steps, you should be able to successfully install and run the project.**




