import requests

resp = requests.get('http://127.0.0.1:5000/cars/list')




for item in resp.json():
    print(item)
    print('id :{} '.format(item[2]))