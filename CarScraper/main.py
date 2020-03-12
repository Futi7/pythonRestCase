import requests
import csv
from bs4 import BeautifulSoup as soup
import time
from mysqlConnector import Connector



class Main:
    
    def __init__(self):
        self.database = Connector()
        self.control = False
        self.bmwCounter = 0
        self.fordCounter = 0


    def scrapeAndInsert(self,brand, model, title, item, classes):

        year = title[:4]
        title = title[5:]
        price = item.find('span', {'class':classes[1]}).text.strip().strip("MSRP")

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
            phone = "NA"
            pass
                
        rowDict = {
                'year' : year,
                'contactNumber' : phone,
                'brand':brand,
                'model' : model,
                'extColor' : extColor,
                'intColor': intColor,
                'transmission' : transmission,
                'price': price
        }
            
        self.database.insertRow(rowDict)



    def run(self):
        for page in range(1,50):
            url = 'https://www.cars.com/for-sale/searchresults.action/?dealerType=localOnly&page='+ str(page) +'&perPage=100&searchSource=GN_BREADCRUMB&sort=relevance&zc=90006'
            req = requests.get(url)
            page_soup = soup(req.text, 'html.parser')

            items = page_soup.findAll('div', {'class':'shop-srp-listings__listing-container'})
            classes = ["listing-row__title", "listing-row__price", "listing-row__meta", "listing-row__phone"]

            for item in items:
                if self.bmwCounter == 50 and self.fordCounter == 50:
                    self.control = True
                    break

                item = item.find('div', {'class':'listing-row__details'})
                
                title = item.find('h2', {'class',classes[0]}).text
                title = title.strip()

                if "BMW" in title.upper():
                    if self.bmwCounter < 50:
                        brand = "BMW"
                        model = title[9:]
                        self.bmwCounter += 1
                        print(self.bmwCounter)
                        self.scrapeAndInsert(brand, model, title, item, classes)
                    else:
                        continue



                if "FORD" in title.upper():
                    if self.fordCounter < 50:
                        brand = "Ford"
                        model = title[9:]
                        self.fordCounter += 1
                        print(self.fordCounter)
                        self.scrapeAndInsert(brand, model, title, item, classes)
                    else:
                        continue



               
            if self.control == True:
                self.database.closeConnection()
                break




if __name__ == "__main__":
    app = Main()
    app.run()

