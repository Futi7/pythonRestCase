import requests
import csv
from bs4 import BeautifulSoup as soup
import time
from mysqlConnector import Connector



class Main:
    
    def __init__(self):
        self.database = Connector()
        self.control = False
        self.i = 0






    def run(self):
        for page in range(1,50):
            url = 'https://www.cars.com/for-sale/searchresults.action/?dealerType=localOnly&page='+ str(page) +'&perPage=20&searchSource=GN_BREADCRUMB&sort=relevance&zc=90006'
            req = requests.get(url)
            page_soup = soup(req.text, 'html.parser')

            items = page_soup.findAll('div', {'class':'shop-srp-listings__listing-container'})




            classes = ["listing-row__title", "listing-row__price", "listing-row__meta", "listing-row__phone"]

            

            

            for item in items:
                item = item.find('div', {'class':'listing-row__details'})
                
                title = item.find('h2', {'class',classes[0]}).text
                title = title.strip()

                if "BMW" in title.upper():
                    brand = "BMW"
                    model = title[8:]

                if "FORD" in title.upper():
                    brand = "Ford"
                    model = title[9:]



                year = title[:4]
                title = title[5:]
                price = item.find('span', {'class':classes[1]}).text.strip().strip("MSRP")


                if "BMW" not in title.upper() and "FORD" not in title.upper():
                    continue

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

                self.i = self.i + 1


                if self.i == 50:
                    self.control = True
                    break

            if self.control == True:
                break


        self.database.closeConnection()



if __name__ == "__main__":
    app = Main()
    app.run()

