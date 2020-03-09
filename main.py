import requests
import csv
from bs4 import BeautifulSoup as soup
import time



control = False
pages = ["1", "2" ,"3"]
i = 0

for page in pages:
    url = 'https://www.cars.com/for-sale/searchresults.action/?dealerType=localOnly&page='+ page +'&perPage=20&searchSource=GN_BREADCRUMB&sort=relevance&zc=90006'
    req = requests.get(url)
    page_soup = soup(req.text, 'html.parser')

    items = page_soup.findAll('div', {'class':'shop-srp-listings__listing-container'})




    classes = ["listing-row__title", "listing-row__price", "listing-row__meta", "listing-row__phone"]

    

    

    for item in items:
        item = item.find('div', {'class':'listing-row__details'})
          
        title = item.find('h2', {'class',classes[0]}).text
        title = title.strip()
        year = title[:4]
        title = title[5:]
        price = item.find('span', {'class':classes[1]}).text

        meta = item.find('ul', {'class':classes[2]})

        extColor = meta.findAll('li')[0]
        unwanted = extColor.find('strong')
        unwanted.extract()

        extColor = extColor.text.strip()

    


        intColor = meta.findAll('li')[1]


        unwanted = intColor.find('strong')
        unwanted.extract()

        intColor = intColor.text.strip()


        transmission = meta.findAll('li')[2]
        unwanted = transmission.find('strong')
        unwanted.extract()
        transmission = transmission.text.strip()
        
        try:
            phone = item.find('div', {'class':classes[3]}).findAll('span')[3].text

        except AttributeError:
            print("error")
            pass
        print("title: ",title, "phone: ", phone,"year: ", year,"----extColor:", extColor,"intColor:",intColor,"transmission", transmission)
        i = i + 1

    






        if i == 50:
            control = True
            break

    if control == True:
        break



print(i)