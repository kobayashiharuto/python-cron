import requests
from bs4 import BeautifulSoup

res = requests.get('https://example.com/')
soup = BeautifulSoup(res.text, 'html.parser')

title = soup.select_one('h1')

if title is not None:
    print(title.text)
