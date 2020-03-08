import requests
import csv
from bs4 import BeautifulSoup as soup
import time



control = False
pages = ["1", "2" ,"3"]
for page in pages:
    url = 'https://www.cars.com/for-sale/searchresults.action/?dealerType=localOnly&page='+ page +'&perPage=20&searchSource=GN_BREADCRUMB&sort=relevance&zc=90006'
    req = requests.get(url)
    page_soup = soup(req.text, 'html.parser')

    items = page_soup.findAll('div', {'class':'shop-srp-listings__listing-container'})




    classes = ["listing-row__title", "listing-row__price", "listing-row__meta", "listing-row__phone"]

    i = 0

    

    for item in items:
        item = item.find('div', {'class':'listing-row__details'})
            
        title = item.find('h2', {'class',classes[0]}).text
        year = title[0:3]
        title = title[5:]
        price = item.find('span', {'class':classes[1]}).text

        meta = item.find('ul', {'class':classes[2]})

        extColor = meta.findAll('li')[0].text
        intColor = meta.findAll('li')[1].text
        transmission = meta.findAll('li')[2].text
        
        try:
            phone = item.find('div', {'class':classes[3]}).find('span').text

        except AttributeError:
            pass
        print("title: ",title, "phone", phone,"year:", year)
        i = i +1

        if i == 50:
            control = True
            break

    if control == True:
        break



print(i)