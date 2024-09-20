#!/bin/bash

cd whocc_scraper
scrapy crawl fourth -o ../output/scrapy_output.json

cd ../bs4
python act_ddd_script.py