import flask
from flask import request, jsonify,  make_response
from flaskext.mysql import MySQL

app = flask.Flask(__name__)
app.config["DEBUG"] = True
mysql = MySQL()


app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Akincilar1'
app.config['MYSQL_DATABASE_DB'] = 'restCase'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

mysql.init_app(app)


@app.route('/cars/list', methods = ['GET']) 
def home(): 
    
    query_parameters = request.args

    extcolor = query_parameters.get('extcolor')
    brand = query_parameters.get('brand')
    transmission = query_parameters.get('trans')
    year = query_parameters.get('year')

    

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



    cur = mysql.connect().cursor()
    cur.execute(query)
    resp = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]
    return jsonify({'data' : resp})




    

  

if __name__ == '__main__': 
  
    app.run(host='127.0.0.1', port=5001, debug = True) 