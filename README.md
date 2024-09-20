# WHOCC ATC-DDD Index WebScraping

This project demonstrates web scraping of the ATC DDD Index [WHOCC website](https://www.whocc.no/atc_ddd_index/) using the `WHOCCAtcDddIndex` class. It retrieves data for different levels of the ATC classification and saves the results into separate Excel files. Additionally, it provides an example of concatenating these Excel files into a single file.

Example of webscrapped document: [click here](https://docs.google.com/spreadsheets/d/1RE7a83teynha3RfWXmQJroAWBkS9KM7B/edit?usp=sharing&ouid=104308617428381034686&rtpof=true&sd=true)

## Prerequisites

- Python 3.11
- Pandas library (`pip install pandas`)
- BeautifulSoup library (`pip install beautifulsoup4`)
- httpx library (`pip install httpx`)

## Usage

### Running with Python

1. **Clone the repository:**

   ```bash
   git clone https://github.com/sarrabenyahia/ATC-DDD-Web-Scraping.git
   cd ATC-DDD-Web-Scraping
   ```

2. **Install the required dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

3. **Run the script:**

   ```bash
   cd bs4
   python act_ddd_script.py
   ```

   The script will retrieve data for different levels of the ATC classification and save the results into separate Excel files (`demo_atc_l1.xlsx`, `demo_atc_l2.xlsx`, `demo_atc_l3.xlsx`, `demo_atc_l4.xlsx`, `demo_atc_l5.xlsx`). It will also concatenate these files into a single Excel file named `ATC_DDD_Index.xlsx`.

### Running with Docker

Alternatively, you can run the project using Docker. This is useful if you don't want to install Python and the dependencies on your local machine.

#### Prerequisites

- Docker installed on your system.

#### Steps

1. **Clone the repository:**

   ```bash
   git clone https://github.com/sarrabenyahia/ATC-DDD-Web-Scraping.git
   cd ATC-DDD-Web-Scraping
   ```

2. **Build the Docker image:**

   ```bash
   docker build -t whocc_scraper_image .
   ```

3. **Run the Docker container:**

   ```bash
   docker run --rm -v $(pwd)/output:/app/output whocc_scraper_image
   ```

   - `-v $(pwd)/output:/app/output`: Maps the `output` directory inside the container to the `output` directory on your host machine, allowing you to access the output files after the container finishes running.

   **Note for Windows users**: Replace `$(pwd)` with `%cd%` or specify the full path to your current directory.

4. **Access the output files:**

   After the container finishes running, the output files will be available in the `output` directory on your host machine:

   ```bash
   ls output/
   ```

   You should see the generated Excel files and any other output files.

## File Descriptions

- `whocc.py`: Contains the `WHOCCAtcDddIndex` class that performs the web scraping and data retrieval.
- `act_ddd_script.py`: The main script that utilizes the `WHOCCAtcDddIndex` class to scrape the data and save it to Excel files.
- `demo_atc_l1.xlsx`: Excel file containing data for Level 1 of the ATC classification.
- `demo_atc_l2.xlsx`: Excel file containing data for Level 2 of the ATC classification.
- `demo_atc_l3.xlsx`: Excel file containing data for Level 3 of the ATC classification.
- `demo_atc_l4.xlsx`: Excel file containing data for Level 4 of the ATC classification.
- `demo_atc_l5.xlsx`: Excel file containing data for Level 5 of the ATC classification.
- `ATC_DDD_Index.xlsx`: Excel file that is created by concatenating the Level 1 to Level 5 Excel files.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

Feel free to modify and adapt the script according to your requirements.

## Acknowledgements

Special thanks to the World Health Organization Collaborating Centre for Drug Statistics Methodology (WHOCC) for providing the ATC DDD Index data.

## Note

Web scraping should be used responsibly and in accordance with the website's terms of service. Always be mindful of not overloading the target website with too many requests.
