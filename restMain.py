import flask
from flask import request, jsonify
import mysql.connector


app = flask.Flask(__name__)
app.config["DEBUG"] = True


@app.route('/cars/list', methods = ['GET', 'POST']) 
def home(): 
    if(request.method == 'GET'): 
  
        data = "Arabalar"
        return jsonify({'data': data}) 
  

    query_parameters = request.args

    id = query_parameters.get('id')
    extcolor = query_parameters.get('extcolor')
    brand = query_parameters.get('brand')
    brand = query_parameters.get('brand')


    

    query = "SELECT * FROM books WHERE"
    to_filter = []

    if id:
        query += ' id=? AND'
        to_filter.append(id)
    if published:
        query += ' published=? AND'
        to_filter.append(published)
    if author:
        query += ' author=? AND'
        to_filter.append(author)
    if not (id or published or author):
        return page_not_found(404)

  

@app.route('/home/<int:num>', methods = ['GET']) 
def disp(num): 
  
    return jsonify({'data': num**2}) 
  
  
# driver function 
if __name__ == '__main__': 
  
    app.run(debug = True) 