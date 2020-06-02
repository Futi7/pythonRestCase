import flask
from flask import request, jsonify
import mysql.connector


app = flask.Flask(__name__)
app.config["DEBUG"] = True


class Database:
    def __init__(self):
        self.conn = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="Akincilar1",
        database = "restCase"
        )

        self.db = self.conn.cursor()


    def fetchJSON(self, query):
        self.db.execute(query)
        resp = [dict((self.db.description[i][0], value)
              for i, value in enumerate(row)) for row in self.db.fetchall()]
        return jsonify(resp)



    def closeConnection(self):
        self.conn.commit()
        self.conn.close()


@app.route('/cars/list', methods = ['GET']) 
def home(): 
    
    query_parameters = request.args

    extcolor = query_parameters.get('extcolor')
    brand = query_parameters.get('brand')
    transmission = query_parameters.get('trans')
    year = query_parameters.get('year')


    db = Database()

    query = "SELECT * FROM cars WHERE"
    toFilter = []

    if extcolor:
        query += " extColor='%s' AND"
        toFilter.append(extcolor)

    if brand:
        query += " brand='%s' AND"
        toFilter.append(brand)

    if year:
        query += " year='%s' AND"
        toFilter.append(year)

    if transmission:
        query += " transmission='%s' AND"
        toFilter.append(transmission)

    
    query = query[:-4]

    query = query % tuple(toFilter)
    return db.fetchJSON(query)


    if not (year or brand or transmission or extcolor):
        return page_not_found(404)

  

if __name__ == '__main__': 
  
    app.run(host='127.0.0.1', port=5001, debug = True) 